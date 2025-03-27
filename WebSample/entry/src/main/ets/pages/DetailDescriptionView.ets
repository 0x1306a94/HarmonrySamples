import { webview } from '@kit.ArkWeb';
import { HTMLTemplateUtils } from './HTMLTemplateUtils';

@ComponentV2
export struct DetailDescriptionView {
  @Param @Require source: string;
  private fullHTML: string = '';
  private controller: webview.WebviewController = new webview.WebviewController();
  private controllerAttached: boolean = false;
  @Local topHeight: number = 36 + 22 + 24;
  @Local minimumHeight: number = 36 + 22 + 24 + 50;
  @Local totalHeight: number = this.topHeight;
  @Local webContentHeight: number = 0;
  @Local webHeight: number = 0;
  @Local expanded: boolean = false;
  @Local needsExpand: boolean = false;
  @Local showLoading: boolean = true;

  aboutToAppear(): void {
    webview.WebviewController.setWebDebuggingAccess(true);
    const html = HTMLTemplateUtils.resolveActivityDetail(this.source, false);
    this.fullHTML = encodeURIComponent(html);
  }

  build() {
    Column() {
      Text('演出详情')
        .fontSize(18)
        .fontWeight(FontWeight.Medium)
        .fontColor('#161616')
        .margin({ left: 20, top: 36 })

      // Stack({ alignContent: Alignment.BottomStart }) {
      //   Web({
      //     src: '',
      //     controller: this.controller,
      //     renderMode: RenderMode.SYNC_RENDER,
      //   })
      //     .width("100%")// .height(this.webHeight > 1 ? this.webHeight : '1')
      //     .height('100%')// .visibility(this.webHeight > 1 ? Visibility.Visible : Visibility.Hidden)
      //     .nestedScroll({
      //       scrollForward: NestedScrollMode.PARENT_FIRST,
      //       scrollBackward: NestedScrollMode.PARENT_FIRST
      //     })
      //     .onControllerAttached(() => {
      //       this.controller.loadData(this.fullHTML, 'text/html', 'UTF-8')
      //     })
      //     .onPageBegin(() => {
      //       this.controller.setScrollable(false);
      //     })
      //     .onPageEnd(() => {
      //       const pageHeight = this.controller.getPageHeight();
      //       const webContentHeight = px2vp(pageHeight);
      //       let totalHeight = Math.ceil(this.topHeight + webContentHeight);
      //       const limitHeight = 200;
      //       if (!this.expanded && webContentHeight > limitHeight) {
      //         totalHeight = this.topHeight + limitHeight;
      //         this.webHeight = limitHeight;
      //         this.needsExpand = true;
      //       } else {
      //         this.webHeight = webContentHeight;
      //         this.needsExpand = false;
      //       }
      //       this.webContentHeight = webContentHeight;
      //       this.totalHeight = totalHeight;
      //     })
      //     .onErrorReceive((event: OnErrorReceiveEvent) => {
      //       if (event.error) {
      //         console.error(`演出详情web加载错误: code ${event.error.getErrorCode()} msg ${event.error.getErrorInfo()}`)
      //       }
      //     })
      //
      //   if ((this.needsExpand && !this.expanded)) {
      //     this.OverlayExpandBar()
      //   }
      // }
      // .width('100%')
      // .height(this.webHeight)
      // .margin({ top: 24 })

      if (this.showLoading) {
        Row() {
          LoadingProgress()
            .color(Color.Gray)
            .width(32)
            .height(32)
            .margin(24)
        }
        .width('100%')
        .justifyContent(FlexAlign.Center)
        .alignItems(VerticalAlign.Center)
      }

      Web({
        src: '',
        controller: this.controller,
        renderMode: RenderMode.SYNC_RENDER,
      })
        .height(this.webHeight > 0 ? this.webHeight : 1)
        .margin({ left: 20, top: 24, right: 20 })
        .visibility(this.webHeight > 0 ? Visibility.Visible : Visibility.Hidden)
        .verticalScrollBarAccess(false)
        .backgroundColor(Color.Transparent)
        .nestedScroll({
          scrollForward: NestedScrollMode.PARENT_FIRST,
          scrollBackward: NestedScrollMode.PARENT_FIRST
        })
        .onControllerAttached(() => {
          this.controllerAttached = true;
          const defaultUserAgent = this.controller.getUserAgent();
          this.controller.setCustomUserAgent(`${defaultUserAgent} showstart/5.5.9 (gateway_v3)`);
          this.controller.loadData(this.fullHTML, 'text/html', 'utf-8')
        })

        .onPageBegin(() => {
          this.controller.setScrollable(false);
        })
        .onPageEnd(async () => {
          this.showLoading = false;
          let pageHeight = this.controller.getPageHeight();
          console.debug(`web pageHeight: ${pageHeight}`);
          try {
            const jsResult = await this.controller.runJavaScript('getContentHeight()');
            const value = Number(jsResult);
            console.debug(`web getContentHeight: ${value}`);
            pageHeight = Math.max(pageHeight, value);
          } catch (e) {
            console.error(`web getContentHeight error: ${JSON.stringify(e, null, '\t')}`);
          }

          let totalHeight = Math.ceil(this.topHeight + pageHeight);
          const limitHeight = 400;
          if (!this.expanded && pageHeight > limitHeight) {
            totalHeight = this.topHeight + limitHeight;
            this.webHeight = limitHeight;
            this.needsExpand = true;
          } else {
            this.webHeight = pageHeight;
            this.needsExpand = false;
          }
          this.webContentHeight = pageHeight;
          this.totalHeight = totalHeight;
        })
        .onErrorReceive((event: OnErrorReceiveEvent) => {
          this.showLoading = false;
          if (event.error) {
            console.error(`演出详情web加载错误: code ${event.error.getErrorCode()} msg ${event.error.getErrorInfo()}`)
          }
        })
        .overlay((this.needsExpand && !this.expanded) ? this.OverlayExpandBar() : null, { align: Alignment.BottomStart })
    }
    .width('100%')
    .constraintSize({ minHeight: this.minimumHeight })
    .justifyContent(FlexAlign.Start)
    .alignItems(HorizontalAlign.Start)
  }

  @Builder
  OverlayExpandBar() {
    Column() {

      Row() {
        Text('展开全部')
          .fontSize(11)
          .fontWeight(FontWeight.Bold)
          .fontColor('#eb484a')
      }
      .justifyContent(FlexAlign.Center)
      .width('100%')
      .height(45)
    }
    .justifyContent(FlexAlign.End)
    .alignItems(HorizontalAlign.Center)
    .width('100%')
    .height(80)
    .linearGradient({
      direction: GradientDirection.Bottom,
      repeating: true,
      colors: [
        ['#00ffffff', 0.0],
        ['#ffffff', 0.25],
        ['#ffffff', 1.0]
      ]
    })
    .visibility(this.expanded ? Visibility.None : Visibility.Visible)
    .onClick(() => {
      this.expanded = !this.expanded;
      if (this.expanded) {
        this.webHeight = this.webContentHeight;
      }
    })
  }
}