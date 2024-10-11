fn divisors(n: u32) -> Result<Vec<u32>, String> {
    let mut divisors = Vec::new();

    for i in 2..n {
        if n % i == 0 {
            divisors.push(i);
        }
    }

    if divisors.is_empty() {
        Err(format!("{} is prime", n))
    } else {
        Ok(divisors)
    }
}