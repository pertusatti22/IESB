import React, { useState } from "react";
import { createStore } from "redux";

const INITIAL_STATE = {
  content: 0,
  contents: [
    {
      title: "Título 1",
      text: "Text a ser exibido para título 1.",
    },
    {
      title: "Título 2",
      text: "Texto secundário do título 2.",
    },
  ],
};

function content(state = INITIAL_STATE, action) {
  if (action.type === "SET_CONTENT") {
    return {
      ...state,
      content: action.content,
    };
  } else {
    return state;
  }
}

function setContent(content) {
  return {
    type: "SET_CONTENT",
    content,
  };
}

const store = createStore(content);

function App() {
  return (
    <div>
      <Nav />
      <Section />
    </div>
  );
}

export default App;

function Nav() {
  return (
    <nav>
      <button type="button" onClick={() => store.dispatch(setContent(0))}>
        Botão 1
      </button>
      <button
        type="button"
        className="btn"
        onClick={() => store.dispatch(setContent(1))}
      >
        Botão 2
      </button>
    </nav>
  );
}

function Section() {
  let [content, setContent] = useState(0);

  store.subscribe(() => setContent(store.getState().content));

  return (
    <div>
      <h1>{store.getState().contents[content].title}</h1>
      <h5>{store.getState().contents[content].text}</h5>
    </div>
  );
}
