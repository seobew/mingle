import React from "react"
import PropTypes from "prop-types"
import Content from "./Content.js"

class Contentlist extends React.Component {
  render () {
    var contentNodes = this.props.data.map(function (content, index){
      return(
        <Content title={content.title} description={content.description}
        views={content.views} downloads={content.downloads} key={content.id}/>
      );
    });
    return (
      <React.Fragment>
        <h1>ContentList</h1>
        {contentNodes}
      </React.Fragment>
    );
  }
}

export default Contentlist
