import { GroupModel, GroupDiscussionModel, GroupResponseDiscussionModel } from './GroupModel'
import User from './User'

export default class GroupViewModel {

  static groupCardDatas() : GroupModel[] {
    let groupDiscussionModel01 = new GroupDiscussionModel("全军覆没", new User("柠檬茶", ""), "", "6天前更新", 15)
    let groupDiscussionModel02 = new GroupDiscussionModel("3年啦，我的股票终于回本了～", new User("对地球还不熟", ""), "", "20小时前更新", 22)
    let groupModel01 = new GroupModel("利用利息生活 ｜ 投资理财", "637881钢铁韭菜", "https://img9.doubanio.com/view/group/sqxs/public/d1419407779e0e5.webp", [groupDiscussionModel01, groupDiscussionModel02])


    let groupDiscussionModel11 = new GroupDiscussionModel("感觉家里是个无底洞", new User("柠檬茶", ""), "", "6天前更新", 104)
    let groupDiscussionModel12 = new GroupDiscussionModel("27岁存款20万算正常嘛？", new User("对地球还不熟", ""), "", "20小时前更新", 62)
    let groupModel02 = new GroupModel("丧心病狂攒钱小组", "626328存钱罐", "https://img3.doubanio.com/view/group/sqxs/public/d3e3bc054be0e07.webp", [groupDiscussionModel11, groupDiscussionModel12])

    let groupDiscussionModel21 = new GroupDiscussionModel("但有哪个银行的利率是2.5以上吗？", new User("柠檬茶", ""), "", "6天前更新", 41)
    let groupDiscussionModel22 = new GroupDiscussionModel("众邦，富民，金城，富民这些都没有积分券发", new User("对地球还不熟", ""), "", "20小时前更新", 2)
    let groupModel03= new GroupModel("利用利息生活 ｜ 储蓄", "104675财富管理员", "https://img3.doubanio.com/view/group/sqxs/public/802f6e9be6afd13.webp", [groupDiscussionModel21, groupDiscussionModel22])

    let groupDiscussionModel31 = new GroupDiscussionModel("😄", new User("柠檬茶", ""), "", "6天前更新", 28)
    let groupDiscussionModel32 = new GroupDiscussionModel("想问bb们有 618买过", new User("对地球还不熟", ""), "", "20小时前更新", 3)
    let groupModel04 = new GroupModel("二号线人多", "463成员", "https://img1.doubanio.com/view/group/sqxs/public/93b0572188b604b.webp", [groupDiscussionModel31, groupDiscussionModel32])

    let groupDiscussionModel41 = new GroupDiscussionModel("我发觉只有打🐒，在豆瓣每一家都是赢", new User("柠檬茶", ""), "", "6天前更新", 10)
    let groupDiscussionModel42 = new GroupDiscussionModel("庆1播怎么样了？", new User("对地球还不熟", ""), "", "20小时前更新", 3)
    let groupModel05 = new GroupModel("天空银河", "742银河🌌", "https://img3.doubanio.com/view/group/sqxs/public/e326d569900ed42.webp", [groupDiscussionModel41, groupDiscussionModel42])

    let groupDiscussionModel51 = new GroupDiscussionModel("别担心，补充一个", new User("柠檬茶", ""), "", "6天前更新", 51)
    let groupDiscussionModel52 = new GroupDiscussionModel("谁破防了🤣", new User("对地球还不熟", ""), "", "20小时前更新", 7)
    let groupModel06 = new GroupModel("自娱自乐后妈茶话会", "762成员", "https://img9.doubanio.com/view/group/sqxs/public/6ac4cd326d28264.webp", [groupDiscussionModel51, groupDiscussionModel52])

    return [groupModel01, groupModel02, groupModel03, groupModel04, groupModel05, groupModel06]
  }
}