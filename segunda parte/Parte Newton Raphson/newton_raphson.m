%Funci�n que entrega la ra�z mas cercana al punto inicial de un poliniomio.
%ENTRADA: poly -> polinomio del cual se quiere obtener una raiz.
%         iter -> cantidad maxima de llamados recursivos.
%         tol  -> tolerancia maxima al error. 
%         xi   -> punto inicial desde donde se comienza a calcular
%SALIDA: raiz del polinomio.
function [raiz] = newton_raphson(poly, iter, tol, xi)
    xrOld = xi;
    xr = xrOld - (polyval(poly,xrOld)/polyval(polyder(poly),xrOld));
    errorAbs = abs(xr-xrOld);
    if(errorAbs < tol)
        raiz = xr;
    elseif (iter == 0)
        raiz = xr;
    else
        a = 100 - iter;
        
        raiz = newton_raphson(poly, iter-1, tol, xr);
    end
end

        