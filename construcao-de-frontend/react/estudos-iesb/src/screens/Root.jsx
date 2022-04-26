import React, { Component } from 'react';
import { Router } from 'react-router';
import { Route, Routes } from 'react-router-dom';

import App from '../screens/Main/App';

const ScreensRoot = () => (
    <Router>
        <Routes>
            <Route path="/" component={App} />
        </Routes>
    </Router>
);

export default ScreensRoot;