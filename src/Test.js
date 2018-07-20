var React = require('react')

exports.test = function(props){
  return React.createElement('div',props, 'Hi there'+ props.path);
}