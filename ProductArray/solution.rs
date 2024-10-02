fn product_array(arr: &[u64]) -> Vec<u64> {
    let n = arr.len();
    let mut prod_array = vec![1; n]; // Initialize product array with 1s

    // Calculate the left products
    let mut left_product = 1;
    for i in 0..n {
        prod_array[i] = left_product;
        left_product *= arr[i];
    }

    // Calculate the right products and update the product array
    let mut right_product = 1;
    for i in (0..n).rev() {
        prod_array[i] *= right_product;
        right_product *= arr[i];
    }

    prod_array
}