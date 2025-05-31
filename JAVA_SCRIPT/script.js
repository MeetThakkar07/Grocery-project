
//------search bar------
let searchForm = document.querySelector('.search-form');

document.querySelector('#search-btn').onclick = () => 
{
    searchForm.classList.toggle('active');

    Navbar.classList.remove('active');
    shoppingCart.classList.remove('active');
    loginform.classList.remove('active');
    CreateAccount.classList.remove('active');
}

//------shopping-cart------
let shoppingCart = document.querySelector('.shopping-cart');

document.querySelector('#cart-btn').onclick = () => 
{
    shoppingCart.classList.toggle('active');
    
    Navbar.classList.remove('active');
    searchForm.classList.remove('active');
    loginform.classList.remove('active');
    CreateAccount.classList.remove('active');
}
//------Login form------
let loginform = document.querySelector('.login-form');

document.querySelector('#login-btn').onclick = () => 
{
    loginform.classList.toggle('active');
    
    Navbar.classList.remove('active');
    searchForm.classList.remove('active');
    shoppingCart.classList.remove('active');
    CreateAccount.classList.remove('active');
}
//------Create Account form------
let CreateAccount = document.querySelector('.create-account');

document.querySelector('#create-btn').onclick = () => 
{
    CreateAccount.classList.toggle('active');
    
    Navbar.classList.remove('active');
    searchForm.classList.remove('active');
    shoppingCart.classList.remove('active');
    loginform.classList.remove('active');
}

//------menu------
let Navbar = document.querySelector('.navbar');

document.querySelector('#menu-btn').onclick = () => 
{
    Navbar.classList.toggle('active');
   
    searchForm.classList.remove('active');
    shoppingCart.classList.remove('active');
    loginform.classList.remove('active');
    CreateAccount.classList.remove('active');
}
let ClosePopup = document.getElementById("popup");
function closepopup(){
    ClosePopup.classList.add("close-popup");
}
window.onscroll = () => 
{
    Navbar.classList.remove('active');
    searchForm.classList.remove('active');
    shoppingCart.classList.remove('active');
    loginform.classList.remove('active');
    CreateAccount.classList.remove('active');
}

