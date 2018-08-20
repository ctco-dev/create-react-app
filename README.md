# Create React App @ctco-dev mod
[![npm version](https://badge.fury.io/js/%40ctco-dev%2Freact-scripts.svg)](https://badge.fury.io/js/%40ctco-dev%2Freact-scripts)
[![Build Status](https://travis-ci.org/ctco/create-react-app.svg?branch=master)](https://travis-ci.org/ctco/create-react-app)

Create React apps with no build configuration. Forked by @ctco-dev from original [CRA](https://github.com/facebookincubator/create-react-app).

* [How it differs from the official CRA](#how-it-differs-from-the-official-cra)
* [Quick Overview](#quick-overview)
* [Creating an App](#creating-an-app) – How to create a new app.
* [CTCO-DEV User Guide](https://github.com/ctco-dev/create-react-app/blob/master/packages/react-scripts/template/README.md) - How to develop apps bootstrapped with Create React App and `@ctco-dev/react-scripts` mod.
* [Original CRA User Guide](https://github.com/facebookincubator/create-react-app/blob/master/packages/react-scripts/template/README.md) – How to develop apps bootstrapped with Create React App.

Create React App works on macOS, Windows, and Linux.<br>
If something doesn’t work, please [file an issue](https://github.com/ctco-dev/create-react-app/issues/new).

## How it differs from the official CRA
* [Typescript](https://www.typescriptlang.org/)
* [TSLint](https://palantir.github.io/tslint/) - typescript linter
* [TSLint Config Airbnb](https://github.com/progre/tslint-config-airbnb) - a tslint config for [Airbnb JavaScript Style Guide](https://github.com/airbnb/javascript)
* [12 Factor Application Configuration](https://12factor.net/config) approach to profile application in runtime. [Details](https://github.com/ctco-dev/create-react-app/blob/master/packages/react-scripts/template/README.md#12-factor-app-config)
* :whale: [Docker](https://www.docker.com/) support (plus 12 Factor configuration in runtime, see above)

## Quick Overview

```sh
npx create-react-app --scripts-version=@ctco-dev/react-scripts my-app
cd my-app
npm start
```

*([npx](https://medium.com/@maybekatz/introducing-npx-an-npm-package-runner-55f7d4bd282b) comes with npm 5.2+ and higher, see [instructions for older npm versions](https://gist.github.com/gaearon/4064d3c23a77c74a3614c498a8bb1c5f))*

Then open [http://localhost:3000/](http://localhost:3000/) to see your app.<br>
When you’re ready to deploy to production, create a minified bundle with `npm run build`.

## Creating an App

**You’ll need to have Node >= 8 on your local development machine** (but it’s not required on the server). You can use [nvm](https://github.com/creationix/nvm#installation) (macOS/Linux) or [nvm-windows](https://github.com/coreybutler/nvm-windows#node-version-manager-nvm-for-windows) to easily switch Node versions between different projects.

To create a new app, run a single command:

```sh
npx create-react-app --scripts-version=@ctco-dev/react-scripts my-app
```
_npx comes with npm 5.2+_

or

```sh
yarn create react-app --scripts-version=@ctco-dev/react-scripts my-app
```

or

```sh
npm init react-app --scripts-version=@ctco-dev/react-scripts my-app
```
_npm init <initializer> is available in npm 6+_

It will create a directory called `my-app` inside the current folder.<br>
Inside that directory, it will generate the initial project structure and install the transitive dependencies.

Inside the newly created project, you can run some built-in commands:

### `npm start` or `yarn start`

Runs the app in development mode.<br>
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

### `npm test` or `yarn test`

Runs the test watcher in an interactive mode.

### `npm run build` or `yarn build`

Builds the app for production to the `build` folder.

## Official CRA User Guide

The official CRA [User Guide](https://github.com/facebookincubator/create-react-app/blob/master/packages/react-scripts/template/README.md) includes information on different topics, such as:

## How to Update to New Versions?

Please refer to the official CRA [User Guide](https://github.com/facebookincubator/create-react-app/blob/master/packages/react-scripts/template/README.md#updating-to-new-releases) for this and other information.
