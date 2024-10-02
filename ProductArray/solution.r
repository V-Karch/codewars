product_array <- function(numbers) {
    n <- length(numbers)
    prod_array <- numeric(n)  # Initialize product array with zeros

    # Calculate the left products
    left_product <- 1
    for (i in 1:n) {
        prod_array[i] <- left_product
        left_product <- left_product * numbers[i]
    }

    # Calculate the right products and update the product array
    right_product <- 1
    for (i in n:1) {
        prod_array[i] <- prod_array[i] * right_product
        right_product <- right_product * numbers[i]
    }

    return(prod_array)
}