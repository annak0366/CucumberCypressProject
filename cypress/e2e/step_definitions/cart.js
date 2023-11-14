import { Given, When, Then, } from "@badeball/cypress-cucumber-preprocessor";
import { cartPage } from "@pages/CartPage";
import {loginPage} from '@pages/LoginPage';
import { mainPage } from "@pages/MainPage";
Given("A user is on the website and is already logged in using username: {string} and password: {string}", (username,password) => {
    cy.visit("https://www.saucedemo.com/");
    loginPage.submitLogin(username,password)
});
When("A user clicks on the Add to cart button", () => {
    mainPage.clickAddtoCart();
});
When("A user clicks on the Add to cart button of second product", () => {
    mainPage.clickAddtoCart2nd();
})
When("A user clicks on the Cart icon", () => {
    mainPage.clickCartIcon();
})
When("A user clicks on the Remove button on the main page", () => {
    mainPage.clickRemoveBtn();
})
When("A user clicks on the Remove button on the Cart page", () => {
    cartPage.clickRemoveBtn();
})
When("A user clicks on the Continue shopping button", () => {
    cartPage.clickContinueShoppingBtn();
})
Then("The added product is displayed on the Cart page", () => {
    cartPage.elements.productCard().should("be.visible");
})
Then("The product is not added to the cart", () => {
    mainPage.elements.addToCart1stBtn().should('be.visible');
    mainPage.elements.numberBadge().should('not.exist');
})
Then("The product card is not displayed in the Cart page", () => {
    cartPage.elements.productCard().should('not.exist');
})
Then("The main page with the product cards is displayed", () => {
    mainPage.getUrl().should("eq", "https://www.saucedemo.com/inventory.html");
})
Then("The {string} number badge is displayed in the cart icon", (value) => {
    mainPage.elements.numberBadge().should('have.text', value);
})
//jijij
