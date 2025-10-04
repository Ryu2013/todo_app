import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  toggle() {
    document.querySelector('nav').classList.toggle('open');
    // ここにメニュー開閉の処理を書く
  }
}
