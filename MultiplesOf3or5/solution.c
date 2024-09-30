int solution(int number) {
    if (number < 0) {
        return -1;
    }

    int total = 0;

    for (int i = 1; i < number; i++) {
        if (i % 3 == 0 && i % 5 == 0) {
            total += i;
        }
    }

    return total;
}