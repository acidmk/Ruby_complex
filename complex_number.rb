class ComplexNumber
  def initialize (r, i)
    @real = r
    @imag = i
  end

  def real
    @real
  end

  def imag
    @imag
  end

  def +(num)
    real = @real + num.real
    imag = @imag + num.imag
    return ComplexNumber.new(real, imag)
  end

  def -(num)
    real = @real - num.real
    imag = @imag - num.imag
    return ComplexNumber.new(real, imag)
  end

  def *(num)
    a = @real
    b = @imag
    c = num.real
    d = num.imag
    return ComplexNumber.new(a * c - b * d, b * c + a * d)
  end

  def to_s
    "#{ real } #{ imag }i"
  end
end
