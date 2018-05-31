import React from "react"
import PropTypes from "prop-types"
import logo from "images/logo.png"

class Header extends React.Component {
  render () {
    return (
      <React.Fragment>
        <div>
          <img className="logo-img" src={logo}/>
          <h6>Mingle</h6>
        </div>
      </React.Fragment>
    );
  }
}

export default Header
