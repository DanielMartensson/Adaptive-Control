function [F] = Fmatrix(A, C, Np)
  
  F = [];
  for i = 1:(Np)
    F = [F; C*A^i];
  end
  
endfunction
