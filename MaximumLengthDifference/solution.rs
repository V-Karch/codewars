fn mx_dif_lg(a1: Vec<&str>, a2: Vec<&str>) -> i32 {
    if a1.is_empty() || a2.is_empty() {
        return -1; // Return -1 if any array is empty
    }
    
    // Find the lengths of the longest and shortest strings in both arrays
    let max_len_a1 = a1.iter().map(|s| s.len()).max().unwrap_or(0);
    let min_len_a1 = a1.iter().map(|s| s.len()).min().unwrap_or(0);
    let max_len_a2 = a2.iter().map(|s| s.len()).max().unwrap_or(0);
    let min_len_a2 = a2.iter().map(|s| s.len()).min().unwrap_or(0);
    
    // Calculate the maximum absolute differences
    let max_diff = max_len_a1 - min_len_a2;
    let max_diff_reverse = max_len_a2 - min_len_a1;
    
    // Return the maximum of both differences
    return max_diff.max(max_diff_reverse) as i32;
}
