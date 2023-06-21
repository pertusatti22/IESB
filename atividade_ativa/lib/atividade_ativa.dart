bool naoTriangulo(a, b, c) {
  if (a + b <= c || a + c <= b || b + c <= a) {
    return true;
  } else {
    return false;
  }
}

bool equilatero(a, b, c) {
  if (a == b && a == c && b == c) {
    return true;
  } else {
    return false;
  }
}

bool escaleno(a, b, c) {
  if (a != b && a != c && b != c) {
    return true;
  } else {
    return false;
  }
}

bool isosceles(a, b, c) {
  if (a == b || a == c || b == c) {
    return true;
  } else {
    return false;
  }
}
