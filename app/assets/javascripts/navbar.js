$(document).ready(() => {
  hideNavLinks();
  $(`.navbar-dropdown`).on("click", (event) => {
    showNavLinks();
    event.stopPropagation();
  });
  
  $(`body`).not(`.navbar-dropdown`).on("click", () => {
    hideNavLinks();
  });
});

const hideNavLinks = () => {
  $(`.navbar-links`).hide();
};

const showNavLinks = () => {
  $(`.navbar-links`).show();
};

const toggleNavDropDown = () => {
  var hidden = $(`.navbar-links`).is(":hidden");
  switch(hidden) {
    case true : showNavLinks(); break;
    case false : hideNavLinks(); break;
  };
};

