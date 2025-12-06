function [mu] = exercicio3(t, NC)

% t: vetor de tempo com instâncias das medições
% NC: medida do número de células a cada instante t

%%%%%%%%%%%%%%%%%%%%%%%%%%

% Garantindo que t vai começar em 0

t = t - t(1);

% A equação diferencial fornecida é:
% dX/dt = μ * X
% onde:
% X  = número de células
% μ  = taxa de crescimento específico

% A solução dessa equação é:
% X(t) = X0 * exp(μ * t)

% Aplicando ln:
% ln(X) = ln(X0) + μ * t

% Podemos transformar essa equação em um modelo linear:
% y = a + μ * t
% onde:
% a = ln(X0)

y_poly = log(NC);

% Com isso, podemos usar o polyfit para descobrir μ e ln(X0), de tal forma que:

% y_poly = p(1)*t + p(2)
%
% onde:
% p(1) = μ
% p(2) = ln(X0)

p = polyfit(t, y_poly, 1);

% Por fim, o μ calculado é o primeiro elemento de p:
mu_calculado = p(1);

% mantenha essas duas linhas finais, subtituindo mu pelo valor que você calculou
mu = mu_calculado

%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
