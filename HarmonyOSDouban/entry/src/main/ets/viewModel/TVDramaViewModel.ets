import MovieModel from './MovieModel'
import {TVDramaModel, TVDramaItem} from './TVDramaModel'
import {MovieViewModel} from './MovieViewModel'

export default  class TVDramaViewModel {

   static movieDatas(): TVDramaModel[] {
     let tvDramaItem01 = new TVDramaItem('全部', MovieViewModel.hotMovieDatas())
     let tvDramaItem02 = new TVDramaItem('全部', MovieViewModel.hotMovieDatas())

     let tvDramaModel01 = new TVDramaModel("影院热映", [tvDramaItem01], 58)
     let tvDramaModel02 = new TVDramaModel("豆瓣热门", [tvDramaItem02], 442)

     return [tvDramaModel01, tvDramaModel02]
   }

  static tvDatas(): TVDramaModel[] {
    let tvDramaItem01 = new TVDramaItem('综合', MovieViewModel.hotTVDatas01())
    let tvDramaItem02 = new TVDramaItem('国产剧', MovieViewModel.hotTVDatas02())
    let tvDramaItem03 = new TVDramaItem('欧美剧', MovieViewModel.hotTVDatas03())
    let tvDramaItem04 = new TVDramaItem('日剧', MovieViewModel.hotTVDatas04())
    let tvDramaItem05 = new TVDramaItem('韩剧', MovieViewModel.hotTVDatas05())
    let tvDramaItem06 = new TVDramaItem('动画', MovieViewModel.hotTVDatas06())

    let tvDramaItem11 = new TVDramaItem('综合', MovieViewModel.hotTVDatas11())
    let tvDramaItem12 = new TVDramaItem('国内', MovieViewModel.hotTVDatas12())
    let tvDramaItem13 = new TVDramaItem('国外', MovieViewModel.hotTVDatas13())

    let tvDramaModel01 = new TVDramaModel("热播新剧", [tvDramaItem01, tvDramaItem02, tvDramaItem03,
      tvDramaItem04, tvDramaItem05, tvDramaItem06], 288)
    let tvDramaModel02 = new TVDramaModel("热播综艺", [tvDramaItem11, tvDramaItem12, tvDramaItem13], 20)

    return [tvDramaModel01, tvDramaModel02]
  }
}