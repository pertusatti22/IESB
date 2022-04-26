import "./Login.css";
import React from "react";
import UiTextBox from "../Ui/TextBox/TextBox";
import UiButton from "../Ui/Button/Button";

function Login() {
  return (
    <div className="Login">
        <h1>LOGIN NO SISTEMA</h1>
        <UiTextBox label='Login' id='user-login' type='text' name='login' placeholder='Digite o Usuário'/>
        <UiTextBox label='Senha' id='user-password' type='text' name='password' placeholder='Digite sua senha'/>
        <UiButton label='Fazer login' />
    </div>
  );
}

export default Login;
