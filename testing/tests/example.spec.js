// @ts-check
const { test, expect } = require('@playwright/test');

test('has title', async ({ page }) => {
  await page.goto('http://aeaf7296a50444e25b82e4145761ef25-13049291.eu-west-1.elb.amazonaws.com/hello');

});
