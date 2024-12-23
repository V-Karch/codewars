fn square_digits(num: u64) -> u64 {
    let mut values: Vec<String> = vec![];

    for c in num.to_string().chars() {
        let to_int = match c.to_string().parse::<u64>() {
            Ok(value) => value,
            Err(_) => 0,
        };

        values.push((to_int * to_int).to_string());
    }

    return match values.join("").parse::<u64>() {
        Ok(value) => value,
        Err(_) => 0,
    };
}

fn main() {
    println!("9119 -> {}", square_digits(9119)); // Should be 811181
}
