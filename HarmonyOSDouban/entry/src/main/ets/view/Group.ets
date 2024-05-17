import BaseView from './BaseView'
import { GroupModel, GroupDiscussionModel } from '../viewModel/GroupModel'
import GroupViewModel from '../viewModel/GroupViewModel'
import CommonConstants from '../constants/CommonConstants'

@Component
export default struct Group {


  @Builder buildGroupListItem(item: GroupModel) {
    Column({space: CommonConstants.COMMON_SPACE}) {
      Row() {
        Row({space: CommonConstants.COMMON_SPACE}) {
          Image(item.image)
            .width(52)
            .height(52)
            .borderRadius(CommonConstants.COMMON_BORDER_RADIUS)

          Column({space: 8}) {
            Text(item.title)
              .fontWeight(700)
              .fontSize(16)
            Text(item.subTitle)
              .fontSize(CommonConstants.COMMON_TEXT_SIZE_SMALL)
              .fontColor("#878787")
          }
          .alignItems(HorizontalAlign.Start)
        }
        .alignItems(VerticalAlign.Top)

        Text($r('app.string.join_to'))
          .fontColor($r('app.color.predominant_color'))
          .backgroundColor("#DFF7E4")
          .padding({left: 8, right: 8, top: 4, bottom: 4})
          .borderRadius(CommonConstants.COMMON_BORDER_RADIUS)
          .fontSize(13)
          .fontWeight(600)
      }
      .width(CommonConstants.FULL_PARENT)
      .alignItems(VerticalAlign.Top)
      .justifyContent(FlexAlign.SpaceBetween)

      Column({space: CommonConstants.COMMON_SPACE}) {
        ForEach(item.discussions.slice(0, 2), (discussion: GroupDiscussionModel) => {
          Row() {
            Row({space: 5}) {
              Image($r('app.media.ic_reply_full'))
                .width(13)
                .height(13)
                .fillColor("#F0A25E")
              Text(`${discussion.responseCount}`)
                .fontSize(CommonConstants.COMMON_TEXT_SIZE_SMALL)
                .fontColor("#878787")
            }
            .width(58)
            .justifyContent(FlexAlign.Start)

            Text(discussion.title)
              .fontSize(13)
              .fontColor("#878787")
          }
          .width(CommonConstants.FULL_PARENT)
          .justifyContent(FlexAlign.Start)
        })
      }
      .backgroundColor($r('app.color.light_gray_bg_color'))
      .borderRadius(6)
      .padding(12)

      Divider()
    }
    .margin({top: 12})
  }

  build() {
    Column() {
      Divider()

      List() {
        //我的小组
        ListItem() {
          Column() {
            Row() {
              Text($r('app.string.my_group'))
                .fontWeight(700)
              Row() {
                Text($r('app.string.total_num'))
                  .fontSize(15)
                  .margin({right: 4})
                  .fontColor("#8A8A8A")
                Image($r('app.media.ic_right'))
                  .width(13)
                  .height(13)
                  .fillColor('#8A8A8A')
              }
            }
            .width(CommonConstants.FULL_PARENT)
            .alignItems(VerticalAlign.Center)
            .justifyContent(FlexAlign.SpaceBetween)

            Column({space: CommonConstants.COMMON_SPACE}) {
              Image($r('app.media.ic_open_door'))
                .width(42)
                .height(50)
                .fillColor($r('app.color.predominant_color'))
                .opacity(0.6)
              Text($r('app.string.join_douban_group'))
                .fontSize(14)
                .fontColor("#B4B4B4")

            }
            .margin({top: 20, bottom: 20})
            .alignItems(HorizontalAlign.Center)
            .justifyContent(FlexAlign.Center)
          }
        }

        //发现小组
        ListItem() {
          Column({space: CommonConstants.COMMON_SPACE}) {
            Row() {
              Text($r('app.string.find_group'))
                .fontWeight(700)
              Row() {
                Text($r('app.string.more'))
                  .fontSize(15)
                  .margin({right: 4})
                  .fontColor("#8A8A8A")
                Image($r('app.media.ic_right'))
                  .width(13)
                  .height(13)
                  .fillColor('#8A8A8A')
              }
            }
            .width(CommonConstants.FULL_PARENT)
            .alignItems(VerticalAlign.Center)
            .justifyContent(FlexAlign.SpaceBetween)

            Divider()
          }
        }

        //小组主题卡片
        ForEach(GroupViewModel.groupCardDatas(), (item: GroupModel) => {
          ListItem() {
            this.buildGroupListItem(item)
          }
        })
      }
      .scrollBar(BarState.Off)
      .margin({left: CommonConstants.COMMON_SPACE, right: CommonConstants.COMMON_SPACE, top: 20})
    }
    .alignItems(HorizontalAlign.Start)
    .justifyContent(FlexAlign.Start)
    .width(CommonConstants.FULL_PARENT)
    .height(CommonConstants.FULL_PARENT)
  }
}