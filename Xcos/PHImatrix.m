function [PHI] = PHImatrix(A, B, C, Np, Nc)
  F = [];
  PHI = [];

  for j = 1:Nc
    for i = (1-j):(Np-j)
      
      if i < 0
        F = [F; 0*C*A^i*B];
      else
        F = [F; C*A^i*B];
      end
      
    end
    
    // Add to F
    PHI = [PHI F];
    // Clear F
    F = [];
  end
  
endfunction
