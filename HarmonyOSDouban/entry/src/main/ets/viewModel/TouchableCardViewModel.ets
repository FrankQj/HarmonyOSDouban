import TouchableCardModel from './TouchableCardModel'

export default  class TouchableCardViewModel {

  static movieDatas(): TouchableCardModel[] {
    return [
      new TouchableCardModel('', '找电影'),
      new TouchableCardModel('', '豆瓣榜单'),
      new TouchableCardModel('', '即将上映'),
      new TouchableCardModel('', '豆瓣片单')
    ]
  }

  static TVPlayDatas(): TouchableCardModel[] {
    return [
      new TouchableCardModel('', '找电视'),
      new TouchableCardModel('', '豆瓣榜单'),
      new TouchableCardModel('', '即将播出'),
      new TouchableCardModel('', '播出时间表')
    ]
  }

  static booksDatas(): TouchableCardModel[] {
    return [
      new TouchableCardModel('', '找图书'),
      new TouchableCardModel('', '豆瓣榜单'),
      new TouchableCardModel('', '读书活动'),
      new TouchableCardModel('', '豆瓣书单')
    ]
  }
}