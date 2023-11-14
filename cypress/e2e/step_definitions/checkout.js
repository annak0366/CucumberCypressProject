import { When, Then,} from "@badeball/cypress-cucumber-preprocessor";
import { cartPage } from "@pages/CartPage";
import { checkoutPage } from "@pages/CheckoutPage";
import { mainPage } from "@pages/MainPage";
When("A user clicks on the Checkout button", () => {
    cartPage.clickCheckoutBtn();
})
When("A user enters valid data into the First Name, Last Name, Postal Code fields and clicks Continue button", () => {
    checkoutPage.submitCheckout();
})
When("A user clicks the Finish button", () => {
    checkoutPage.clickFinishBtn();
})
When("A user clicks on the Continue button", () => {
    checkoutPage.clickContinueBtn();
})
When("A user enters postal code into the Postal Code field", () => {
    checkoutPage.enterPostalCode();
})
When("A user clicks on the Cancel button", () => {
    checkoutPage.clickCancelBtn();
})
Then("The first Checkout page is opened", () => {
    mainPage.getUrl().should("eq", "https://www.saucedemo.com/checkout-step-one.html");
})
Then("The {string} text is displayed", (text) => {
    checkoutPage.elements.successMessage().should("have.text", text);
})