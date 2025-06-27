"use strict"
let notificationButton = document.getElementById("notificationButton");
let notificationMenu = document.querySelector(".notificationMenu-child");
let burgerButton = document.getElementById("burgerButton");
let burgerMenu = document.querySelector(".menuHamburguesa-child");

function showHideMenu() {
    burgerMenu.classList.toggle('d-none');
}

function showHideNotificationMenu() {
    notificationMenu.classList.toggle('d-none');
}