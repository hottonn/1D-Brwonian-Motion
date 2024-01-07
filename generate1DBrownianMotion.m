function generate1DBrownianMotion(numSteps)
    % numSteps: Number of steps in the motion

    % Set parameters
    stepSize = 0.1; % Step size

    % Initialize position array
    positions = zeros(1, numSteps);

    % Generate Brownian motion
    for i = 2:numSteps
        % Generate random displacement
        dx = sqrt(stepSize) * randn(); % Random displacement

        % Update position
        positions(i) = positions(i-1) + dx;
    end

    % Plot Brownian motion trajectory
    figure;
    plot(1:numSteps, positions);
    title('1D Brownian Motion');
    xlabel('Time Step');
    ylabel('Position');
    grid on;
end
