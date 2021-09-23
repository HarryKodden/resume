class App {

  stop(e) {
    if (e !== undefined && e !== null) {
      e.preventDefault();
      e.stopPropagation();
    }
  }

  start() {

  }

}

export default new App()