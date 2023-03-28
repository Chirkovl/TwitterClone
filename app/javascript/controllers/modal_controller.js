import { Controller } from "@hotwired/stimulus"

export default class extends Controller {

  connect() {
    this.element.addEventListener('turbo:submit-end', () => {
      document.getElementById('close-model-btn').click();
      this.element.reset();
    });
  }
}

