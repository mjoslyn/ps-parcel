import React from "react";
import ReactDOM from "react-dom";

import App from './src/App'

function main() {
  //const myComponent = React.createElement(Main.example, { label: "Increment" });
  ReactDOM.render(<App/>, document.getElementById("app"));
}

if (module.hot) {
  module.hot.accept(function() {
    console.log("running main again");
    main();
  });
}

console.log("starting");
main();
