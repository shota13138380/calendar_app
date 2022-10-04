window.addEventListener('load', function(){

  const pullDownButton = document.getElementsByClassName("event_count")
  const pullDownButtons = Array.from(pullDownButton)

  pullDownButtons.forEach(function(pullDownButton) {
    pullDownButton.addEventListener('mouseover', function(){
      pullDownButton.firstElementChild.style.display = 'block';
    })

    const closeButton = document.getElementsByClassName("close_btn")
    const closeButtons = Array.from(closeButton)
    closeButtons.forEach(function(closeButton) {
      closeButton.addEventListener('click', function() {
        pullDownButton.firstElementChild.style.display = 'none';
      })
    })
  })
})