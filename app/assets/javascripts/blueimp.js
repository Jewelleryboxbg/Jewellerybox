window.onload = function () {
  document.getElementById('links').onclick = function (event) {
      event = event || window.event;
      var target = event.target || event.srcElement,
          link = target.src ? target.parentNode : target,
          options = {index: link, event: event},
          links = this.querySelectorAll("a#gallery")
//          links = this.getElementsByTagName('a');
      blueimp.Gallery(links, options);
  };
};