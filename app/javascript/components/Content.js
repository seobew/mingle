import React from "react"
import PropTypes from "prop-types"

class Content extends React.Component {
  render () {
    return (
      <div className="Content">
        <h6>title : {this.props.title} || description : {this.props.description} || views : {this.props.views} || downloads : {this.props.downloads}</h6>
      </div>
    );
  }
}

export default Content
