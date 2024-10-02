module Solution
  implicit none
contains
  pure function productArray(a) result(prodArray)
    integer, dimension(:), intent(in) :: a
    integer, dimension(:), allocatable :: prodArray
    integer :: i, n
    integer :: left_product, right_product

    n = size(a)
    allocate(prodArray(n))

    ! Initialize prodArray with 1s
    prodArray = 1

    ! Calculate the left product for each element
    left_product = 1
    do i = 1, n
      prodArray(i) = left_product
      left_product = left_product * a(i)
    end do

    ! Calculate the right product and update the prodArray
    right_product = 1
    do i = n, 1, -1
      prodArray(i) = prodArray(i) * right_product
      right_product = right_product * a(i)
    end do

  end function productArray
end module Solution
