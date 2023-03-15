import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  test() {
    const elementHtml = this.element;
    const value = elementHtml.getAttribute('sell')

    console.log(elementHtml);
    console.log(value)
  }
}
