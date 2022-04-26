import "./TextBox.css";
import React from "react";

function UiTextBox(props) {
  return (
    <div className="UiTextBox">
      <label for="name">{props.label}</label>
      <br />
      <input
        id={props.id}
        type={props.type}
        name={props.name}
        placeholder={props.placeholder}
      ></input>
    </div>
  );
}

export default UiTextBox;
