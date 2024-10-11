divisors = lambda integer: [i for i in range(1, integer + 1) if integer % i == 0 and not i in (1, integer)] or f"{integer} is prime"  # noqa: E713, E731

# Silly little code golf for this one