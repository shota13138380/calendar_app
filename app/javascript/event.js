window.addEventListener('load', function(){

  const eventList = document.getElementsByClassName("event_count")
  const eventLists = Array.from(eventList)

  eventLists.forEach(function(eventList) {
    eventList.addEventListener('click', function(){
      eventList.firstElementChild.style.display = 'block';
    })

    const closeButton = document.getElementsByClassName("close_btn")
    const closeButtons = Array.from(closeButton)
    closeButtons.forEach(function(closeButton) {
      closeButton.addEventListener('click', function(e) {
        eventList.firstElementChild.style.display = 'none';
        e.stopPropagation()
      })
    })
  })
})