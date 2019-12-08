/* global axios */
console.log("hello");


axios.get("/api/products").then(function(response) {
  console.log("hello again");
  console.log(response.data);
  
});

// show info from js in HTML


// find element on page 

// change element