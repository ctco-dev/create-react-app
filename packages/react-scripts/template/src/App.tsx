import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';

import styles from './App.module.css';

class App extends Component {
  render() {
    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <h1 className="App-title">Welcome to React!</h1>
          <small className={styles.headerSubtitle}>Unofficial C.T.Co opinion about CRA ;)</small>
        </header>
        <p className="App-intro">
          To get started, edit <code>src/App.tsx</code> and save to reload.
        </p>
      </div>
    );
  }
}

export default App;
