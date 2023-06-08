
// require("@rails/ujs").start()
// require("turbolinks").start()
// require("@rails/activestorage").start()
// require("channels")

let menuButton = document.querySelector('.menu');

menuButton.addEventListener('click', function() {
  let classList = document.getElementById('nav').classList
  classList.toggle('hidden')
  classList.toggle('block')
})
