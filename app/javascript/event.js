window.addEventListener('load', function(){

  const pullDownButton = document.getElementsByClassName("event_count")
  const pullDownButtons = Array.from(pullDownButton)

  pullDownButtons.forEach(function(pullDownButton) {
    pullDownButton.addEventListener('mouseover', function(){
      pullDownButton.firstElementChild.style.display = 'block';
    })

    pullDownButton.addEventListener('mouseout', function(){
      pullDownButton.firstElementChild.style.display = 'none';
    })

  })
})