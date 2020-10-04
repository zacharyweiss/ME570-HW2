%function [R]=rot2d(theta)
%Create a 2-D rotation matrix from the angle theta according to (1)
function [vertexEffectorTransf,vertices1Transf,vertices2Transf] = twolink_kinematicMap(theta)
    vertexEffectorTransf = 
end

function [R] = rot2d(theta)
    R=[cos(theta) -sin(theta); sin(theta) cos(theta)];
end

[B1_T_B2] = [5

