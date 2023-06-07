import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="message-feed"
export default class extends Controller {
  connect() {
    const el = document.getElementById('messages')
    el.scrollTop = el.scrollHeight
  }

  clear_and_scroll(event) {
    event.target.reset()

    const el = document.getElementById('messages')
    el.scrollTop = el.scrollHeight
  }
}
