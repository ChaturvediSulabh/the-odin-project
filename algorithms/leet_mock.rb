def subarray_sum(nums, k)
    result = 0
    indices  = (0....length).to_a
    indices = indices.product(indices).reject{|i,j| i > j}.uniq
    indices.each do |i, j|
        result += 1 if subarray_sum[i] + subarray_sum[j] == k
    end
    return result
end

subarray_sum([1,1,1], 2)