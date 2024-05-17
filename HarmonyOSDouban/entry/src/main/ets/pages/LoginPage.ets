import router from '@ohos.router'

@Entry
@Component
struct LoginPage {

  build() {
      Column() {
        Row() {
          Image($r('app.media.ic_close'))
            .margin({ top: 8 })
            .width($r('app.float.menu_image_size'))
            .height($r('app.float.menu_image_size'))
            .onClick(() => {
              router.back()
            })
        }
        .width("100%")
        .justifyContent(FlexAlign.Start)

        Column() {

          Text($r('app.string.welcome_login_douban'))
            .fontSize(32)
            .fontWeight(600)

          Blank()
            .height(40)

          Flex({ wrap: FlexWrap.Wrap, alignItems: ItemAlign.Center, justifyContent: FlexAlign.Center }) {
            Image($r('app.media.ic_sure'))
              .width(18)
              .height(18)
              .margin({right: 6})
              .fillColor("#787878")
            Text($r('app.string.login_tips'))
              .fontColor($r('app.color.search_bar_placeholder_color'))
              .fontSize(13)
              .padding({top: 2, bottom: 2})
            Text($r('app.string.douban_agreement'))
              .fontColor($r('app.color.predominant_color'))
              .fontSize(13)
              .padding({top: 2, bottom: 2})
              .onClick(() => {

              })
            Text($r('app.string.personal_info_agreement'))
              .fontColor($r('app.color.predominant_color'))
              .fontSize(13)
              .padding({top: 2, bottom: 2})
              .onClick(() => {

              })
          }




          Blank()
            .height(30)

          Button({ type: ButtonType.Normal }) {
            Row() {
              Image($r('app.media.zs_ic_weixin_Normal'))
                .width(22)
                .height(22)
                .margin({right: 6})
              Text($r('app.string.wechat_login'))
                .fontColor(Color.White)
                .fontWeight(600)
            }
            .alignItems(VerticalAlign.Center)

          }
          .width("100%")
          .backgroundColor("#1CC40E")
          .padding(10)
          .margin({ top: 6, bottom: 6 })
          .borderRadius(8)

          Button({ type: ButtonType.Normal }) {
            Row() {
              Text($r('app.string.account_password_login'))
                .fontColor(Color.Black)
                .fontWeight(600)
            }
            .alignItems(VerticalAlign.Center)

          }
          .width("100%")
          .backgroundColor(Color.White)
          .borderWidth(1)
          .borderColor("#DADADA")
          .padding(10)
          .margin({ top: 6, bottom: 6 })
          .borderRadius(8)

          Text($r('app.string.phone_number_login'))
            .fontColor($r('app.color.predominant_color'))
            .fontWeight(600)
            .padding(8)
            .margin({ top: 12, bottom: 8 })
        }

        Blank()
          .height(30)

        Column({space: 20}) {
          Row() {
            Divider()
              .width(72)
            Text($r('app.string.other_ways_to_login'))
              .fontColor($r('app.color.search_bar_placeholder_color'))
              .margin({ left: 16, right: 16 })
            Divider()
              .width(72)
          }
          .alignItems(VerticalAlign.Center)
          .justifyContent(FlexAlign.Center)

          Row({ space: 36 }) {
            Image($r('app.media.ic_weibo_Normal'))
              .width(36)
              .height(36)
              .borderRadius(16)
              .borderWidth(0.5)
              .borderColor("#DBDBDB")
              .onClick(() => {

              })


            Image($r('app.media.ic_apple_black_logo_square_Normal'))
              .width(36)
              .height(36)
              .borderRadius(16)
              .borderWidth(0.5)
              .borderColor("#DBDBDB")
              .onClick(() => {

              })
          }
          .alignItems(VerticalAlign.Center)

          Blank()
            .height(8)
        }

      }
      .width("100%")
      .height("100%")
      .padding({left: 20, right: 20})
      .justifyContent(FlexAlign.SpaceBetween)

  }
}