var mysql = require("mysql");
var inquirer = require("inquirer");


var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,

    user: "root",

    password: "",
    database: "bamazonDB"
});


connection.connect(function (err) {
    if (err) throw err;
    displayProducts();
    // startSearch();
});

function displayProducts() {
    var query = "SELECT item_id, product_name, price FROM products";
    connection.query(query, function (err, res) {
        for (var i = 0; i < res.length; i++) {
            console.log(
                "Item ID: " + res[i].item_id +
                " || Product: " + res[i].product_name +
                " || Price: $" + res[i].price.toFixed(2)
            )
        }
        startSearch();
    });
}

function startSearch() {
    inquirer
        .prompt([{
                name: "item_id",
                type: "input",
                message: "Please provide the ID of the Item you would like to buy."
            },
            {
                name: "amount",
                type: "input",
                message: "How many units would you like to buy?"
            }

        ])
        .then(function (answer) {
            var itemID = answer.item_id;
            var quantity = answer.amount;

            var query = "SELECT * FROM products WHERE ?";
            connection.query(query, {
                item_id: itemID
            }, function (err, res) {
                if (err) throw err;
                if (res.length === 0) {
                    console.log("Error: Please Select a Valid Item ID");
                    console.log("---------------------------------------");

                    displayProducts();

                } else {
                    var productResult = res[0]
                    if (quantity <= productResult.stock_quantity) {
                        console.log("You are in luck, the item is in stock!!");
                        var updateQuery = "UPDATE products SET stock_quantity = " + (productResult.stock_quantity - quantity) + " WHERE item_id = " + itemID;


                        connection.query(updateQuery, function (err, res) {
                            if (err) throw err;

                            console.log("Your order has been placed successfully! Your total is $" + productResult.price.toFixed(2) * quantity);
                            console.log("Thank You for shopping with the one and only!");
                            console.log("-----------------------------------------------------------------");
                        })
                    } else {
                        console.log("Insufficient quantity.....GET some BREAD!");
                        console.log(("Please enter a valid quantity"));
                        console.log("------------------------------------");

                        displayProducts();


                    }
                }


            })

        })
}