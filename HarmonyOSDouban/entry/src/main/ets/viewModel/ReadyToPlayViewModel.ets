import ReadyToPlayModel from './ReadyToPlayModel'

export default class  ReadyToPlayViewModel {

  static movieDatas(): ReadyToPlayModel[] {
    return [
      new ReadyToPlayModel('国内即将上映', '热门电影', 14, "https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2908150912.webp",
        "https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2908133988.webp",
      "https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2907907131.webp"),
      new ReadyToPlayModel('全球值得期待', '热门电影', 5, "https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2907916556.webp",
        "https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2901851237.webp",
        "https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2907590390.webp")
    ]
  }

  static tvDatas(): ReadyToPlayModel[] {
    return [
      new ReadyToPlayModel('即将播出', '热门新剧', 10, "https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2886774864.webp",
        "https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2907681437.webp",
        "https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2893472869.webp")
    ]
  }

}