fn solution(num: i32) -> i32 {
    if num < 0 {
        return 0;
    }

    let mut total = 0;

    for i in 1..num {
        if i % 3 == 0 || i % 5 == 0 {
            total += i;
        }
    }

    return total;
}