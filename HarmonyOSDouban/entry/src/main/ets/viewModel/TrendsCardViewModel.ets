import { BaseModel, BookVideoType } from './BaseModel'
import TrendsCardModel from './TrendsCardModel'
import User from './User'

export default class TrendsCardViewModel {

  static trendsDatas(): TrendsCardModel[] {
    let user: User = new User("谁是战国枭雄", "https://img3.doubanio.com/icon/up137847422-83.jpg")
    let baseModel01 = new BaseModel("https://img1.doubanio.com/view/subject/m/public/s34804300.jpg", "十八岁出门远行",
      7.7, "余华/2024/江苏凤凰文艺出版社", BookVideoType.Reading, false)
    let model01: TrendsCardModel = new TrendsCardModel(user, "5分钟前", baseModel01)


    let baseModel02 = new BaseModel("https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2907202358.webp", "没有一顿火锅解决不了的事 (2023)",
      7.7, "2023/中国大陆/喜剧 悬疑 犯罪/丁晟/杨幂/于谦/田雨/余皑磊/李九霄", BookVideoType.Looking, false)
    let model02: TrendsCardModel = new TrendsCardModel(user, "51分钟前", baseModel02)


    let baseModel03 = new BaseModel("https://img1.doubanio.com/view/subject/m/public/s11336328.jpg", "走出幻觉走向成熟",
      7.7, "金融帝国/2012/中国经济出版社", BookVideoType.Reading, true, "从学生股民到系统交易专家")
    let model03: TrendsCardModel = new TrendsCardModel(user, "51分钟前", baseModel03)

    return [
      model01, model02, model03
    ]
  }

}