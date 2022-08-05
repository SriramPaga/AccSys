import React from 'react';
import * as ReactBootStrap from "react-bootstrap";
import {Button} from "react-bootstrap"
import AccountBalanceRoundedIcon from '@mui/icons-material/AccountBalanceRounded';

function NavbarBS() {
  return (
    <div>
<ReactBootStrap.Navbar collapseOnSelect expand="xl" bg="black" variant="dark" fixed='top'>
  <ReactBootStrap.Navbar.Brand href="#home"><AccountBalanceRoundedIcon/> Accounting System
  </ReactBootStrap.Navbar.Brand>
  <ReactBootStrap.Navbar.Toggle aria-controls="basic-navbar-nav" />
  <ReactBootStrap.Navbar.Collapse id="basic-navbar-nav">
    <ReactBootStrap.Nav className="mr-auto">
      <ReactBootStrap.Nav.Link href="#home">Home</ReactBootStrap.Nav.Link>
      <ReactBootStrap.Nav.Link href="#link">Link</ReactBootStrap.Nav.Link>
      <ReactBootStrap.NavDropdown title="Dropdown" id="basic-nav-dropdown">
        <ReactBootStrap.NavDropdown.Item href="#action/3.1">Student</ReactBootStrap.NavDropdown.Item>
        <ReactBootStrap.NavDropdown.Item href="#action/3.2">Trainer</ReactBootStrap.NavDropdown.Item>
        <ReactBootStrap.NavDropdown.Item href="#action/3.3">Employee</ReactBootStrap.NavDropdown.Item>
        <ReactBootStrap.NavDropdown.Divider />
        <ReactBootStrap.NavDropdown.Item href="#action/3.4">Separated link</ReactBootStrap.NavDropdown.Item>
      </ReactBootStrap.NavDropdown>
    </ReactBootStrap.Nav>
    {/* <ReactBootStrap.Form inline>
      <ReactBootStrap.FormControl type="text" placeholder="Search" className="mr-sm-2" />
      <ReactBootStrap.Button variant="outline-success">Search</ReactBootStrap.Button>
    </ReactBootStrap.Form> */}
    <ReactBootStrap.Nav>
  <ReactBootStrap.Nav.Link to="/deets">
  <ReactBootStrap.Nav.Link href="#deets">More deets</ReactBootStrap.Nav.Link>
  </ReactBootStrap.Nav.Link>
  <ReactBootStrap.Nav.Link to="/dankmemes">
  <ReactBootStrap.Nav.Link eventKey={2} href="#memes">
      Dank memes
    </ReactBootStrap.Nav.Link>
  </ReactBootStrap.Nav.Link>
  </ReactBootStrap.Nav>
  </ReactBootStrap.Navbar.Collapse>
</ReactBootStrap.Navbar>

    </div>
  )
}

export default NavbarBS