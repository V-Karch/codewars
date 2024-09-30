solution <- function(number) {
    if (number < 0) {
        return(0);
    }

    total <- 0;

    for (i in 1:number-1) {
        if (i %% 3 == 0 | i %% 5 == 0) {
            total <- total + i;
        }
    }

    return(total);
}