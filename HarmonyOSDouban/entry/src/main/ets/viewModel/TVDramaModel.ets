import MovieModel from './MovieModel'

export class TVDramaModel {
  readonly title: string
  readonly items: TVDramaItem[]
  readonly totalNums: number

  constructor(title: string, items: TVDramaItem[], totalNums: number) {
    this.title = title
    this.items = items
    this.totalNums = totalNums
  }
}

export class TVDramaItem {
  readonly subTitle: string
  readonly items: MovieModel[]

  constructor(subTitle: string, items: MovieModel[]) {
    this.subTitle = subTitle
    this.items = items
  }
}