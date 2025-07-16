import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  send(event) {
    event.preventDefault();
    const form = event.target;
    const input = form.querySelector("input");

    fetch(form.action, {
      method: "POST",
      headers: { Accept: "text/vnd.turbo-stream.html" },
      body: new FormData(form),
    }).then(() => {
      input.value = "";
    });
  }
}
