function mCoordinates = getCoordinates(sArray, nSensors)

switch(upper(sArray))
    case 'VIKK'
        mCoordinates = getVikkCoordinates();
        mCoordinates = mCoordinates(1:nSensors, :);
    case 'DUOLOG'
        mCoordinates = [logspace(-2, -0.6, nSensors)', ...
            logspace(-0.6, -2, nSensors)', zeros(nSensors, 1)];
    case 'LIN'
        mCoordinates = [linspace(0, 0.2, nSensors)',zeros(nSensors, 2)];
    case 'LOG'
        mCoordinates = [logspace(-2, -0.6, nSensors)',zeros(nSensors, 2)];
    case 'DUALLIN'
        mCoordinates = [linspace(0, 0.2, round(nSensors/2))', ...
            zeros(round(nSensors/2), 2); ...
            linspace(0, 0.2, round(nSensors/2))', ...
            0.05*ones(round(nSensors/2), 1), ...
            zeros(round(nSensors/2), 1)];
    case 'RAND'
        mCoordinates = [[0, sort(0.2*rand(nSensors-2, 1))', 0.2]', ...
            zeros(nSensors, 2)];
    case 'DUORAND'
        mCoordinates = [[[0;0], sort(0.2*rand(nSensors-2, 2))', ...
            [0.2;0.2]]',zeros(nSensors, 1)];
    case 'DUALLOG'
        vSpan1 = logspace(-2, log10(0.21), floor(nSensors/2))-0.01;
        vSpan2 = logspace(-2, log10(0.21), ceil(nSensors/2))-0.01;
        mCoordinates = [[vSpan1', zeros(floor(nSensors/2),2)]; ...
            [0.2-vSpan2', zeros(ceil(nSensors/2),2)]];
    case 'CIRCLE'
        mCoordinates = [[pi*cos(2*pi*(1:(nSensors - 1))/...
            (nSensors - 1)), 0]', [pi*sin(2*pi*(1:(nSensors - 1))/...
            (nSensors - 1)), 0]', zeros(nSensors, 1)];
end