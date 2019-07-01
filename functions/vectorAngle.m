function nAngle = vectorAngle(vIn1, vIn2)

nAngle = acos(vIn1(:)' * vIn2(:) / (norm(vIn1) * norm(vIn2)));

if vIn2(2) < vIn1(2)
    nAngle = -nAngle;
end



end