import MovieModel from './MovieModel'

export class MovieViewModel {

  static hotMovieDatas(): MovieModel[] {
    return [
      new MovieModel("https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2905957300.webp", "猩球崛起：新世界", 6.5, "", false),
      new MovieModel("https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2907242293.webp", "九龙城寨之围城", 7.4, "", false),
      new MovieModel("https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2907202358.webp", "没有一顿火锅解决不了的事", 5.9, "", false, true),
      new MovieModel("https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2907583906.webp", "哈尔的移动城堡", 9.1, "", false, true),
      new MovieModel("https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2906646351.webp", "陌路狂花钱", 5.9, "", false),
      new MovieModel("https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2907613569.webp", "维和部队", 5.3, "", false),
      new MovieModel("https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2907078869.webp", "间谍过家家", 7.4, "", false),
      new MovieModel("https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2905957300.webp", "猩球崛起：新世界", 6.5, "", false),
      new MovieModel("https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2905957300.webp", "猩球崛起：新世界", 6.5, "", false),
      new MovieModel("https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2905957300.webp", "猩球崛起：新世界", 6.5, "", false),
    ]
  }

  static hotTVDatas01(): MovieModel[] {
    return [
      new MovieModel("https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2907845241.webp", "新生", 0, "", false, true, true,
        ["https://img3.doubanio.com/view/photo/sqxs/public/p2891649733.webp"]),
      new MovieModel("https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2905618615.webp", "我的阿泰勒", 8.7, "", false, true),
      new MovieModel("https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2898355734.webp", "哈尔滨一九九四", 6.5, "", false, true),
      new MovieModel("https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2906823053.webp", "春色寄情人", 7.7, "", false, true),
      new MovieModel("https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2898358481.webp", "不可告人", 0, "", false, true),
      new MovieModel("https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2905773032.webp", "背着善宰跑", 9.0, "", false),
    ]
  }

  static hotTVDatas02(): MovieModel[] {
    return [
      new MovieModel("https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2905618615.webp", "我的阿泰勒", 8.7, "", false, true, true,
        ["https://img3.doubanio.com/view/photo/sqxs/public/p2907814252.webp"]),
      new MovieModel("https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2907845241.webp", "新生", 0, "", false, true),
      new MovieModel("https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2898355734.webp", "哈尔滨一九九四", 6.5, "", false, true),
      new MovieModel("https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2906823053.webp", "春色寄情人", 7.7, "", false, true),
      new MovieModel("https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2898358481.webp", "不可告人", 0, "", false, true),
      new MovieModel("https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2899493403.webp", "不够善良的我们", 8.3, "", false),
    ]
  }

  static hotTVDatas03(): MovieModel[] {
    return [
      new MovieModel("https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2907986154.webp", "9号秘事 第九季", 9.4, "", false, true, true,
        ["https://img9.doubanio.com/view/photo/sqxs/public/p2902209826.webp"]),
      new MovieModel("https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2905409296.webp", "辐射 第一季", 8.6, "", false),
      new MovieModel("https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2906769501.webp", "驯鹿宝贝", 8.6, "", false),
      new MovieModel("https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2907272662.webp", "贵族高中：我们之间的鸿沟 第一季", 7.4, "", false),
      new MovieModel("https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2903967561.webp", "幕府将军 第一季", 7.9, "", false),
      new MovieModel("https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2903600763.webp", "雷普利", 8.7, "", false),
    ]
  }

  static hotTVDatas04(): MovieModel[] {
    return [
      new MovieModel("https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2906084001.webp", "第二次恋爱才完美", 7.8, "", false),
      new MovieModel("https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2906520389.webp", "十角馆杀人事件", 7.4, "", false),
      new MovieModel("https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2904435782.webp", "绝对会变成BL的世界VS绝不想变成BL的男人", 7.3, "", false),
      new MovieModel("https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2907294474.webp", "Believe－通往你的桥", 7.0, "", false),
      new MovieModel("https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2906137843.webp", "命运", 5.6, "", false),
    ]
  }

  static hotTVDatas05(): MovieModel[] {
    return [
      new MovieModel("https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2905773032.webp", "背着善宰跑", 9.0, "", false),
      new MovieModel("https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2905107716.webp", "眼泪女王", 7.0, "", false),
      new MovieModel("https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2905109427.webp", "寄生兽：灰色部队", 8.0, "", false),
      new MovieModel("https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2906472034.webp", "毕业", 0, "", false),
      new MovieModel("https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2907390239.webp", "虽然不是英雄", 7.3, "", false),
    ]
  }

  static hotTVDatas06(): MovieModel[] {
    return [
      new MovieModel("https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2905477008.webp", "鬼灭之刃 柱训练篇", 9.1, "", false),
      new MovieModel("https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2904892049.webp", "仙逆", 9.4, "", false),
      new MovieModel("https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2905991635.webp", "格林童话变奏曲", 6.5, "", false),
      new MovieModel("https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2905696141.webp", "怪兽8号", 8.2, "", false),
      new MovieModel("https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2904562869.webp", "X战警97 第一季", 9.0, "", false),
      new MovieModel("https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2902213721.webp", "少女乐队的呐喊", 9.0, "", false),
    ]
  }

  static hotTVDatas11(): MovieModel[] {
    return [
      new MovieModel("https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2907412231.webp", "克拉克森的农场 第三季", 9.6, "", false),
      new MovieModel("https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2904759499.webp", "无限超越班 第二季‎", 5.3, "", false, true),
      new MovieModel("https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2907541665.webp", "灿烂的花园", 8.2, "", false, true),
      new MovieModel("https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2905256551.webp", "大侦探 第九季", 8.3, "", false, true),
      new MovieModel("https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2903956496.webp", "种地吧 2", 9.1, "", false, true),
      new MovieModel("https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2908011118.webp", "恋爱兄妹", 9.2, "", false),
    ]
  }

  static hotTVDatas12(): MovieModel[] {
    return [
      new MovieModel("https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2903956496.webp", "种地吧 2", 9.1, "", false, true, false,
        ["https://img1.doubanio.com/view/photo/sqxs/public/p2889553019.webp"]),
      new MovieModel("https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2904759499.webp", "无限超越班 第二季‎", 5.3, "", false, true),
      new MovieModel("https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2907541665.webp", "灿烂的花园", 8.2, "", false, true),
      new MovieModel("https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2905256551.webp", "大侦探 第九季", 8.3, "", false, true),
      new MovieModel("https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2905739434.webp", "哈哈哈哈哈 第四季", 7.4, "", false),
    ]
  }

  static hotTVDatas13(): MovieModel[] {
    return [
      new MovieModel("https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2906484842.webp", "女高推理班 第三季", 9.4, "", false, false, true,
        ["https://img3.doubanio.com/view/photo/sqxs/public/p2906484842.webp"]),
      new MovieModel("https://img2.doubanio.com/view/photo/s_ratio_poster/public/p2907412231.webp", "克拉克森的农场 第三季", 9.6, "", false),
      new MovieModel("https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2908011118.webp", "恋爱兄妹", 9.2, "", false),
      new MovieModel("https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2905301637.webp", "体能之巅：百人大挑战2", 8.3, "", false),
      new MovieModel("https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2903885859.webp", "帐篷外是欧洲4：南法篇", 8.4, "", false),
      new MovieModel("https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2903396793.webp", "犯罪现场 4", 9.3, "", false),
    ]
  }

  static hotMovieList(): MovieModel[] {
    return [
      new MovieModel("https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2907242293.webp", "九龙城寨之围城", 7.4, "", false, false, false,
      ["https://img9.doubanio.com/view/photo/l/public/p2907363546.webp", "https://img9.doubanio.com/view/photo/l/public/p2907363545.webp"]
      ),
      new MovieModel("https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2905957300.webp", "猩球崛起：新世界", 6.5, "", false),
      new MovieModel("https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2870015146.webp", "阿尔卡拉斯", 7.4, "", false, true),
    ]
  }

  static weeklyMovieList() : MovieModel[] {
    return [
      new MovieModel("https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2900802556.webp", "去唱卡拉OK吧！", 8.2, "", false, false, true,
        ["https://img1.doubanio.com/view/photo/sqxs/public/p2893163368.webp", "https://img3.doubanio.com/view/photo/sqxs/public/p2906568412.webp"]
      ),
      new MovieModel("https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2902162282.webp", "小小恶信件", 7.7, "", false),
      new MovieModel("https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2887044222.webp", "Single8", 8.1, "", false)
    ]
  }

  static doubanTop250MovieList() : MovieModel[] {
    return [
      new MovieModel("https://img3.doubanio.com/view/photo/s_ratio_poster/public/p480747492.webp", "肖申克的救赎", 9.7, "", false, false, false,
        ["https://img1.doubanio.com/view/photo/sqxs/public/p456482220.webp", "https://img3.doubanio.com/view/photo/sqxs/public/p2635663142.webp"]
      ),
      new MovieModel("https://img1.doubanio.com/view/photo/s_ratio_poster/public/p2561716440.webp", "霸王别姬", 9.6, "", false),
      new MovieModel("https://img3.doubanio.com/view/photo/s_ratio_poster/public/p2372307693.webp", "阿甘正传", 9.5, "", false)
    ]
  }

  static movieRankList() : MovieRankListModel[] {
    return [
      new MovieRankListModel("实时热门电影", MovieViewModel.hotMovieList()),
      new MovieRankListModel("一周口碑电影榜", MovieViewModel.weeklyMovieList()),
      new MovieRankListModel("豆瓣电影 Top250", MovieViewModel.doubanTop250MovieList())
    ]
  }



  static tvRankList() : MovieRankListModel[] {
    return [
      new MovieRankListModel("实时热门电视剧", MovieViewModel.hotTVDatas01()),
      new MovieRankListModel("华语口碑剧集榜", MovieViewModel.hotTVDatas02()),
      new MovieRankListModel("全球口碑剧集榜", MovieViewModel.hotTVDatas03()),
      new MovieRankListModel("国内口碑综艺榜", MovieViewModel.hotTVDatas12()),
      new MovieRankListModel("国外口碑综艺榜", MovieViewModel.hotTVDatas13())
    ]
  }

}

export class MovieRankListModel {
  readonly   title: string
  readonly   items: MovieModel[]

  constructor(title: string, items: MovieModel[]) {
    this.title = title
    this.items = items
  }
}