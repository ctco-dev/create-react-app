module.exports = {
  start: 'react-scripts start',
  build: 'react-scripts build',
  test: 'react-scripts test --env=jsdom',
  eject: 'react-scripts eject',

  lint: 'tslint --project .',
  analyze: 'npx source-map-explorer build/static/js/main.*',
};
