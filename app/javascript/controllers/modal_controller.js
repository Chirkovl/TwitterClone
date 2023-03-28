import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  connect() {
    //console.log("Hello, Stimulus!")
    this.element.addEventListener('submit', () => {
      document.getElementById('close-model-btn').click();
    });
  }
}

