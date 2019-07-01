function [mDelays] = getDelays(mSensors, nAzimuth, nC)

mDelays = zeros(size(mSensors, 1), 1);
nSensors = size(mSensors, 1);

mSensors = mSensors - mSensors(1, :);

vUnit = [1, 0, 0];

for iSensor = 1:nSensors
   
    mDelays(iSensor) = norm(mSensors(iSensor, :)) * cos(nAzimuth + ...
        vectorAngle(vUnit, mSensors(iSensor, :))) / nC;
    
    mDelays(isnan(mDelays)) = 0;
    
end





end