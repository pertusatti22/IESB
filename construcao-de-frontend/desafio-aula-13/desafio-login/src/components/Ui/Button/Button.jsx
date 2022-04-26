import './Button.css';
import React from 'react';


function UiButton(props) {
  return (
    <div className='ButtonBorder'>
    <button className="UiButton">{props.label}</button>
    </div>
  );
}

export default UiButton;
