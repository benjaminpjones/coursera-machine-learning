fprintf('\nVisualizing Ideal Data... \n')

A = pinv(Theta2(:, 2:end)) * (18 * eye(10));
B =   pinv(Theta1(:, 2:end)) * arrayfun(@reverseSigmoid, A, 10);

disp(size(pinv(Theta2(:, 2:end)))), disp(size(pinv(Theta1(:, 2:end))))

disp(size(A)), disp(size(B))

displayData(B');