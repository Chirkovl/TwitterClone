import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  connect() {
    //console.log("Hello, Stimulus!")
    this.element.addEventListener('turbo:submit-end', () => {
      document.getElementById('close-model-btn').click();
      this.element.reset();
    });
  }
}

