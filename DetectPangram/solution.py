def is_pangram(st):
    return len(set([i for i in st.lower() if i.isalpha()])) == 26