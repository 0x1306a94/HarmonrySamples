const activityDetailTemplate = `
<!DOCTYPE html>
<html \${initial-theme}>
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="user-scalable=0,width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0"
    />
    <meta content="telephone=yes" name="format-detection" />
    <style>
      * {
        padding: 0;
        margin: 0;
      }

      html,
      body {
        background-color: transparent !important;
        line-height: 2;
        font-family: PingFangSC-Regular, sans-serif !important;
      }

      .p-content {
        word-break: break-word;
      }

      .p-content span,
      .p-content p,
      .p-content div {
        font-size: 15px !important;
        font-family: PingFangSC-Regular, sans-serif !important;
      }

      a,
      a span {
        color: #007aff !important;
      }

      .p-poster img,
      .p-content img {
        max-width: 100% !important;
        height: auto;
        vertical-align: middle;
      }

      .p-content iframe {
        width: 100% !important;
      }

        /* 深色主题样式 */
      html.dark-theme .p-content,
      html.dark-theme .p-content * {
        color: #dddddd !important;
      }

      html.dark-theme .p-poster img,
      html.dark-theme .p-content img {
        -webkit-filter: brightness(70%);
        filter: brightness(70%);
      }

      \${additional-style}
    </style>
  </head>

  <script>
    function getContentHeight() {
      const height = Math.max(
        document.documentElement.scrollHeight,
        document.body.scrollHeight,
        document.documentElement.offsetHeight
      );
      return height;
    }

    // 设置主题
    function setTheme(isDark) {
      if (isDark) {
        document.documentElement.classList.add("dark-theme");
      } else {
        document.documentElement.classList.remove("dark-theme");
      }
      calculateHeight();
    }

    function getImages() {
      var objs = document.getElementsByTagName("img");
      var images = [];
      for (var i = 0; i < objs.length; i++) {
        images.push(objs[i].src);
      }
      return images;
    }
  </script>
  <body>
    <div class="p-content">\${content}</div>
  </body>
</html>
`

export class HTMLTemplateUtils {
  /**
   * 获取演出详情html完整代码
   * @param content 内容
   * @param isDark 是否时深色模式
   * @param styles css样式
   * @returns 完整的html完整代码
   */
  public static resolveActivityDetail(content: string, isDark: boolean, styles?: string): string {
    let result = activityDetailTemplate.replaceAll("${initial-theme}", isDark ? `class="dark-theme"` : '');
    result = result.replaceAll("${additional-style}", styles ?? '');
    result = result.replaceAll("${content}", content ?? '');
    return result;
  }
}