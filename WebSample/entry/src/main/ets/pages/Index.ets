import { DetailDescriptionView } from './DetailDescriptionView';

@Entry
@ComponentV2
struct Index {
  // 这里的html内容是接口获取的
  @Local html: string =
    `<p><img src="https://img.alicdn.com/imgextra/i4/2251059038/O1CN01JXyAfU2GdSdyjORvL_!!2251059038.png_q60.jpg_.webp" width="865" height="600" /></p>
<p>正因为有了音乐，才有了相遇的瞬间，有了相会的感动，有了相逢的人们，有了邂逅的思念。</p>
<p>&mdash;&mdash;&mdash;有马公生</p>
<p>&nbsp;</p>
<p><img src="https://img.alicdn.com/imgextra/i1/2251059038/O1CN0184YsG32GdSe0Hbp2v_!!2251059038.png_q60.jpg_.webp" width="865" height="543" /></p>
<p>&nbsp;</p>
<p>如果你看过《四月是你的谎言》，</p>
<p>相信你一定会来听音乐会，</p>
<p>这是一场《四谎》乐迷见面会。</p>
<p>如果你没有看过《四月是你的谎言》，</p>
<p>那你一定要看完再来听音乐会，</p>
<p>这是一场钢琴与小提琴的浪漫邂逅。</p>
<p>&nbsp;</p>
<p><img src="https://img.alicdn.com/imgextra/i4/2251059038/O1CN0131lwmM2GdSe2gwcoZ_!!2251059038.png_q60.jpg_.webp" width="865" height="540" /></p>
<p>曲 目</p>
<p>&nbsp;</p>
<p>肖邦：升c小调幻想即兴曲Op.66</p>
<p>ショパン：幻想即興曲第4番嬰ハ短調op . 66 幻想即興曲」</p>
<p>Chopin：Impromptu&nbsp;No.&nbsp;4&nbsp;C Sharp&nbsp;-minor,&nbsp;Op.66&nbsp;'Fantaisie-Impromptu'</p>
<p>&nbsp;</p>
<p>肖邦：g小调叙事曲Op.&nbsp;23&nbsp;&nbsp;No.&nbsp;1</p>
<p>ショパン：バラード第1番ト短調作品23</p>
<p>Chopin：Ballad&nbsp;in&nbsp;G&nbsp;minor&nbsp;No.&nbsp;1&nbsp;Op.&nbsp;23</p>
<p>&nbsp;</p>
<p>克莱斯勒：爱的喜悦</p>
<p>クライスラー：愛の喜び</p>
<p>&nbsp;Kreisler : Liebesfreud</p>
<p>&nbsp;</p>
<p>克莱斯勒：爱的忧伤</p>
<p>クライスラー：爱の悲しみピアノ（バイオリン独奏版)</p>
<p>Kreisler : Liebesleid</p>
<p>&nbsp;</p>
<p>德彪西：月光</p>
<p>ドビュッシー：月の光</p>
<p>Debussy：Clair de lune</p>
<p>&nbsp;</p>
<p>贝多芬：&ldquo;月光&rdquo;奏鸣曲第三乐章</p>
<p>ベートーベン：ピアノ・ソナタ第14番 &lt;月光&gt; 第3楽章</p>
<p>Beethoven:&nbsp;Piano&nbsp;Sonata&nbsp;No.14&nbsp;In&nbsp;C&nbsp;Sharp&nbsp;Minor,&nbsp;Op.27&nbsp;No.2&nbsp;-"Moonlight"&nbsp;</p>
<p>&nbsp;</p>
<p>贝多芬：A大调&ldquo;克鲁采&rdquo;小提琴钢琴奏鸣曲第一乐章</p>
<p>ベートーヴェン：イ長調克魯採」第1楽章ピアノソナチネバイオリンBeethoven:&nbsp;Sonata&nbsp;for&nbsp;Violin&nbsp;and&nbsp;Piano&nbsp;No.&nbsp;9&nbsp;in&nbsp;A&nbsp;Major,&nbsp;Op.&nbsp;47&nbsp;-&nbsp;"Kreutzer"</p>
<p>&nbsp;</p>
<p>肖邦：练习曲Op.25 No.11 &ldquo;冬风&rdquo;</p>
<p>ショパン：エチュードイ短調作品25-11＜木枯らしのエチュード＞</p>
<p>Chopin： Etudes Op.25 No.11</p>
<p>&nbsp;</p>
<p>肖邦：练习曲 Op.10 No.3 &nbsp;&ldquo;离别&rdquo;</p>
<p>ショパン：エチュードOp. 10 - 3</p>
<p>Chopin： Etudes &nbsp;Op.10&nbsp;No.3</p>
<p>&nbsp;</p>
<p>肖邦：练习曲Op.25 No.5</p>
<p>ショパン：エチュードホ短調作品25-5</p>
<p>Chopin： Etudes Op.25 No.5</p>
<p>&nbsp;</p>
<p>肖邦：练习曲 Op.10 No.4 &ldquo;激流&rdquo;</p>
<p>ショパン：エチュード嬰ハ短調作品10-4</p>
<p>Chopin： Etudes Op.10 No.4</p>
<p>&nbsp;</p>
<p>肖邦：练习曲 Op.10 No.12 &ldquo;革命&rdquo;</p>
<p>ショパン：エチュードハ短調作品10-12＜革命のエチュード＞</p>
<p>Chopin： Etudes Op.10 No.12</p>
<p>&nbsp;</p>
<p>莫扎特：小星星变奏曲</p>
<p>モーツァルト：きらきら星変奏曲&nbsp;K.265</p>
<p>Mozart:12 Variations in C Major on &rdquo;Ah, vous dirai-je Maman&rdquo;, K.265&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>贝多芬：&ldquo;热情&rdquo;奏鸣曲第三乐章</p>
<p>ベートーヴェン：ピアノソナタ第23番ヘ短調作品57「熱情」より第3楽章</p>
<p>Beethoven:&nbsp;Piano&nbsp;Sonata&nbsp;No.23&nbsp;in&nbsp;F&nbsp;minor,&nbsp;Op.57&nbsp;-"Appassionata"&nbsp;</p>
<p>&nbsp;</p>
<p>圣桑：引子与回旋随想曲</p>
<p>サン＝サーンス：序奏とロンド・カプリチオーソ</p>
<p>Saint-Sa&euml;ns：Introduction et Rondo Capriccioso Op.28</p>
<p>&nbsp;</p>
<p><img src="https://img.alicdn.com/imgextra/i1/2251059038/O1CN01M9CExG2GdSe3jfSFO_!!2251059038.png_q60.jpg_.webp" width="413" height="413" /></p>
<p><strong>钢琴：于泊洋</strong></p>
<p>一颗冉冉升起的90后新生代钢琴新星！</p>
<p>4岁半开始学习钢琴，12岁考入中央音乐学院附中，师从赖元培教授。2011年被保送到中央音乐学院钢琴系，成为杜泰航教授的得意门生。2012年赴维也纳参加&ldquo;Allegro vivo"音乐节，同时获得该比赛第一名，并在多地举办音乐会，获得业内专家和观众的一致认可。2015年保送至中央音乐学院钢琴系研究生，继续跟随杜泰航教授深造并在全国各地举办音乐会。他凭借坚实的功底和精湛的琴技，博得业内外人士的高度评价和赞誉。</p>
<p>2018年7月，以优异的成绩毕业并获得中央音乐学院钢琴硕士学位。</p>
<p>他被媒体称赞为&ldquo;气质高贵、纯正，演奏水准极高的青年钢琴演奏家&rdquo;。</p>
<p data-spm-anchor-id="a2oeg.project.detail-info.i1.5ab8630a00Hn7J">&nbsp;</p>
<p><img src="https://img.alicdn.com/imgextra/i2/2251059038/O1CN016lWkEo2GdSdxzoYen_!!2251059038.png_q60.jpg_.webp" width="413" height="413" /></p>
<p><strong>小提琴：黄晓楠</strong></p>
<p>旅美青年小提琴演奏家</p>
<p>青岛耶胡迪梅纽因音乐学校小提琴教师</p>
<p>美国伊斯曼音乐学院小提琴博士</p>
<p>&nbsp;</p>
<p>黄晓楠， 26岁取得美国伊斯曼音乐学院博士学位(Doctor of Musical Arts)，曾任伊斯曼音乐学院小提琴助教一职；为美国音乐教师全国协会(MTNA)会员。2007年考入星海音乐学院附中，跟随马凯怡老师学习；2013年受美国小提琴大师Elmar Oliveira赏识，以全额奖学金及全额食宿奖学金招入美国林恩音乐学院。2017年考入美国综合排名第一的伊斯曼音乐学院攻读硕士学位并获得Carol Cirotzki Barsh最高奖学金，2018被学校正式聘为小提琴助教；2019年成功考上伊斯曼音乐学院，成为该年唯二的小提琴博士生，跟随前苏联小提琴家，鲍罗丁四重奏第一小提琴Mikhail Kopelman学习。2021年受邀在美国卡内基音乐厅举行独奏演出。</p>
<p>她曾荣获香港国际小提琴比赛（中国赛区）第一名；第12届美国国际青年演奏家弦乐比赛（Young Artist String Competition）第二名。2021年她连续获得了美国大都会国际音乐大赛特等奖（Grand Metropolitan International Music Competition）；国际音乐炫技大奖赛（Grand Prize Virtuoso）第一名；第六届奥丁国际音乐比赛（Odin International Music Competition）第二名；以及金色古典音乐大奖赛（Golden Classical Music Awards）第一名。</p>
<p>留美期间，黄晓楠曾受邀在美国卡内基音乐厅(Carnegie Hall), 哈奇音乐厅(Hatch Recital Hall), 库伯恩音乐厅(Kilbourn Hall)，奥地利弗拉肖古堡等多个音乐厅举行独奏演出；2019年受邀于纽约乔治&middot;伊斯曼故居(George Eastman House)举行个人独奏会。同时，她也活跃在多个国际古典音乐节中，并多次获得高额奖学金，包括美国海菲兹国际音乐节（Heifetz International Music Festival ），肖塔夸音乐节(Chuatuaqua Music Festival)和欧洲奥地利萨尔兹堡音乐节，并受到多个小提琴大师赞赏。法国小提琴教育家Pierre Amoyal曾称赞其&ldquo;拥有独特及优美的音色&rdquo;。</p>
<p>2018年成为伊斯曼音乐学院小提琴助教后，黄晓楠秉承她独有的教学理念，把中国、美国、前苏联的音乐教学体系融会贯通。其学生陆续考取了世界知名音乐学府，例如曼哈顿音乐学院，曼尼斯音乐学院，奥伯林音乐学院等。2022年，黄晓楠的两位学生分别赢得了意大利米兰国际小提琴比赛(Milan International Violin Competition)幼年组及成人组的一等奖。黄晓楠于2023年9月开始任教于青岛耶胡迪梅纽因学校。</p>
<p><img src="https://img.alicdn.com/imgextra/i4/2251059038/O1CN01CiyZZM2GdSdtdDscq_!!2251059038.png_q60.jpg_.webp" width="865" height="540" /></p>
<p>&ldquo;此生无悔入四月，来世愿做友人A&rdquo;</p>
<p><img src="https://img.alicdn.com/imgextra/i2/2251059038/O1CN0174ELTh2GdSe3C4POA_!!2251059038.png_q60.jpg_.webp" width="865" height="540" /></p>
<p>看过《四月是你的谎言》的小伙伴们如是说：</p>
<p>@境界线上的Horizon: 动漫四月是你的谎言是一部集音乐，友情乃至爱情于一体的动漫佳作。本人没有仔细研究剧情，毕竟这里是谈音乐的。在这个浮躁的社会，古典乐曲已难逢知音，一部以古典音乐为主题的动漫作品也算是个大胆的尝试吧。整篇OST应该是以钢琴小提琴协奏(？)为主，曲风总体悠扬婉转，质量也算上乘，请静心聆听。</p>
<p><img src="https://img.alicdn.com/imgextra/i4/2251059038/O1CN01k6UGTm2GdSe0nqxUI_!!2251059038.png_q60.jpg_.webp" width="865" height="540" /></p>
<p>@Dr_小源: 作为一名高中音乐生，我的梦想是能把这张专辑的曲子都弹会，最好能达到公生的水平，哈哈～</p>
<p>@深蓝瑟: 看完四月后，最近听钢琴都有点着魔了</p>
<p><img src="https://img.alicdn.com/imgextra/i3/2251059038/O1CN01whzKJk2GdSe0nsALS_!!2251059038.png_q60.jpg_.webp" width="865" height="540" /></p>
<p>@你梦中的微笑: 作为一个公生的同龄钢琴师，我想说的是 我和他很像。发型像，身材像，性格相似，自己的经历也与他想似。 我在四月得了抑郁症。但是《四月》带给了我全新的启迪。我痊愈了。 练琴是件苦事，在你决定成为一个钢琴手的时候注定会遇到很多挑战。 音乐的美，在于它本身 亦在于它和钢琴师背后的故事。</p>
<p><img src="https://img.alicdn.com/imgextra/i3/2251059038/O1CN01NBSvRN2GdSdxzqN7I_!!2251059038.png_q60.jpg_.webp" width="865" height="480" /></p>
<p>@才夙: 因为这部动画爱上了古典乐，爱上了一个季节，一个没有你的春天。</p>
<p>@焗烤燻雞麵: 無意間聽到這首跟在看四月是你的謊言的時候都想把很久沒拉的小提琴拿出來拉啊</p>
<p><img src="https://img.alicdn.com/imgextra/i3/2251059038/O1CN01sRzGpq2GdSe2VHFLn_!!2251059038.png_q60.jpg_.webp" width="865" height="480" /></p>
<p>@_倒退的风景: 这两天恶补了四谎，满满的感动和正能量！想做薰一样的女子！也喜欢里面的音乐，无论故事情节还是人物描绘都深深地牵动着我！大爱啊</p>
<p>@Dean_wfy: 看了四月谎后 开始重新认识古典乐 特别是钢琴与小提琴~感觉不一样了！</p>
<p>@空寥短笛渐轻狂_: 四月是我最喜欢的动漫，没有之一，因为这部动漫，使我的品味都提升了一个档次！没有错！开始喜欢钢琴曲，开始喜欢古典音乐，遇到你真好。</p>
<p><img src="https://img.alicdn.com/imgextra/i3/2251059038/O1CN01xOuiyG2GdSdtdJW62_!!2251059038.png_q60.jpg_.webp" width="865" height="540" /></p>
<p>《四月是你的谎言》里到底有多少个谎言?</p>
<p>盘点宫园薰的全部谎言：</p>
<p>1、喜欢渡亮太</p>
<p>2、流泪原因</p>
<p>3、强装笑容和镇定</p>
<p>4、友人A&nbsp;</p>
<p>5、掩饰身份，强行吹牛</p>
<p>6、埋伏渡</p>
<p>7、窥探足球部</p>
<p>8、华夫饼等点心</p>
<p>9、钢琴</p>
<p>10、我们就是要这样活下去的人</p>
<p>11、还有我在</p>
<p>12、只是慎重起见的入院检查</p>
<p>13、小卖部门口玩手</p>
<p>14、跳飞机</p>
<p>15、假哭</p>
<p>16、看渡的社团活动</p>
<p>17、弟弟</p>
<p>18、喜欢</p>
<p>19、粉丝</p>
<p>20、单纯的入院检查</p>
<p>21、疲劳体质</p>
<p>22、第二学期会回学校</p>
<p>23、卡娜蕾</p>
<p>24、忘记名字</p>
<p>25、赎罪机会</p>
<p>26、本身就是个谎言</p>
<p>27、包包在学校</p>
<p>28、奇怪的开关</p>
<p>29、没有遇见就好了</p>
<p>30、回到过去，把一切忘掉</p>
<p>31、练习</p>
<p>32、来医院是浪费时间</p>
<p>33、买春季服装</p>
<p>34、想吃卡娜蕾</p>
<p>35、第一次去重症监护室</p>
<p>36、重</p>
<p>37、奇迹</p>
<p>38、不要丢下我一个人</p>
<p>39、临别之吻</p>`;


  @Local html2: string = `
  <p><img style="display: block; margin-left: auto; margin-right: auto;" src="https://s2.showstart.com/img/2023/0226/11/30/fcf607e6637b46a9b399758c19673953_1080_10000_9685162.0x0.png?imageMogr2/thumbnail/640x/gravity/Center/crop/640x" alt="" width="640" height="5926" /></p>
  `;

  build() {
    Scroll() {
      Column() {
        Column() {
          Text('头部内容xxxx')
            .fontSize(18)
        }
        .justifyContent(FlexAlign.Center)
        .alignItems(HorizontalAlign.Center)
        .height(160)
        .backgroundColor(Color.Brown)
        .width('100%')

        DetailDescriptionView({ source: this.html })

        Column() {
          Text('尾部内容xxxx')
            .fontSize(18)
        }
        .backgroundColor(Color.Gray)
        .justifyContent(FlexAlign.Center)
        .alignItems(HorizontalAlign.Center)
        .width('100%')
        .height(300)
      }
      .justifyContent(FlexAlign.Start)
      .width('100%')
      .constraintSize({minHeight: '100%'})
    }
    .height('100%')
    .width('100%')
    .edgeEffect(EdgeEffect.Spring)
  }
}