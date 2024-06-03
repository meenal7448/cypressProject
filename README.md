Cypress+BDD
Install Cypress:
npm install cypress --save-dev

Run:
npx cypress open 
[To geenerate the configuration files]

Install cypress-cucumber:
npm install --save-dev cypress-cucumber-preprocessor

Create folder structure:
cypress/integration/e2e -> filename.feature
cypress/step_definitions -> filenameSteps.js
cypress/page -> filenamePage.js

Add path of step definitions package.json:
"cypress-cucumber-preprocessor": {
    "step_definitions": "cypress/step_definitions/"
  }

Import cucumber and define specPatter in cypress.config.js:
const { defineConfig } = require("cypress");
const cucumber = require('cypress-cucumber-preprocessor').default
module.exports = defineConfig({
  e2e: {
    setupNodeEvents(on, config) {
      on('file:preprocessor',cucumber())
      // implement node event listeners here
    },
    specPattern:"cypress/e2e/**/*.feature"
  },
});

Cypress+BDD+Allure

Install Allure report commandline tool:
npm install --save-dev allure-commandline

Install Allure cypress adapter:
npm install --save-dev allure-cypress

Import allure-cypress in cypress.config.js:
const { defineConfig } = require("cypress");
const { allureCypress } = require("allure-cypress/reporter");

module.exports = defineConfig({
  e2e: {
    setupNodeEvents(on, config) {
      allureCypress(on);
    },
  },
});

Import Allure-cypress commands in Support/e2e.js:
import "allure-cypress/commands"
[Check wether allure-cypress node module have commands file or not else change the path "import 'allure-cypress/dist/commands.cjs'
"]

Run test:
npx cypress run

Generate report:
npx allure serve allure-results


Versions:
Cypress- 13.7.1
Cucumber - 4.2.1