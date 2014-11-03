require 'rational'
def multiply(num1, den1, num2, den2)
  firtproductnumerator = num1 * num2
  firstproductdenominator = den1 * den2
  simp = firtproductnumerator.gcd(firstproductdenominator)
  productnumerator = firtproductnumerator / simp
  productdenominator = firstproductdenominator / simp
  outputFrac = [productnumerator, productdenominator]
end
def divide(num1, num2, den1, den2)
  quotientnum = num1*den2
  quotientden = den1*num2
  outputFrac = [quotientnum, quotientden]
end
def add(num1, num2, den1, den2)
  simpden = den1.lcm(den2)
  newden1 = simpden
  newden2= simpden
  frac1 = simpden/den1
  newnum1 = num1*frac1
  frac2 = simpden/den2
  newnum2 = num2*frac2
  finalnum = newnum1 + newnum2
  outputFrac = [finalnum, newden1]
end
def subtract(num1, den1, num2, den2)
  denominator = den1.lcm(den2)
  multfrac1 = denominator / den1
  multfrac2 = denominator / den2
  numerator1 = num1 * multfrac1
  numerator2 = num2 * multfrac2
  numerator = numerator1 - numerator2
  gcd = numerator.gcd(denominator)
  simpnumerator = numerator / gcd
  simpdenominator = denominator / gcd
  outputFrac = [simpnumerator, simpdenominator]
end
def simplify(num1, num2)
  simp = num1.gcd(num2)
  newnum = num1 / simp
  newden = num2 / simp
  outputFrac = [newnum, newden]
end