def solution(s: str) -> str:
    result: str = ""
    
    for i in s:
        result += " " + i if i.isupper() else i
        # Add a space in front of the value
        # If it's uppercase
            
    return result