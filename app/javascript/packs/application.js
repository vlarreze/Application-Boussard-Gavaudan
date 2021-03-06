import "bootstrap";
import "jquery";
import "flatpickr/dist/flatpickr.min.css"; // Note this is important!
import flatpickr from "flatpickr";
flatpickr("#deal_date");
flatpickr("#ipo_date");
flatpickr("#post_date");
flatpickr("#comment_date");
flatpickr("#document_date");

import trix from "trix";
import "trix/dist/trix.css";

import { autocompleteSearch } from "./autocomplete";

if (document.getElementById("search-data")) {
  autocompleteSearch();
}

import "../features/apiftimes.js";
import "../styles/application";
//Front-end Navbar
import "../frontend/header/navbar";
import "../frontend/header/darkmode";
//Menus
import "../frontend/menu/portfolio_nav";
//Portfolios
import "../frontend/portfolio/index/index";
//Home
import "../frontend/home/test";
import "../frontend/home/dailyft";

import "../frontend/stock/show/carroussels";
import "../frontend/stock/show/modal";
import "../frontend/stock/show/valuation";
import "../frontend/stock/show/chart";

// Add some code with jQuery:
$(document).ready(function () {
  console.log("jQuery just checked that the DOM is ready!");
});





