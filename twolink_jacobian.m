%function [vertexEffectorDot]=twolink_jacobian(theta,thetaDot)
%Implement the map for the Jacobian of the position of the end effector with
%respect to the joint angles as derived in Question  q:jacobian-effector.
function [vertexEffectorDot]=twolink_jacobian(theta,thetaDot)
    w_hat = @(w)[0 -w;w 0];
    %single_vertexEffectorDot = @(theta_k,thetaDot_k) rot2d(theta_k(1))*(w_hat(thetaDot_k(1))*rot2d(theta_k(2))+rot2d(theta_k(2))*w_hat(thetaDot_k(2))+eye(2))*[5;0];
    single_vertexEffectorDot = @(theta_k,thetaDot_k)  [-5*sin(theta_k(1))*thetaDot_k(1)-5*cos(theta_k(1))*sin(theta_k(2))*thetaDot_k(1)-5*cos(theta_k(2))*sin(theta_k(1))*thetaDot_k(1)-5*cos(theta_k(1))*sin(theta_k(2))*thetaDot_k(2)-5*cos(theta_k(2))*sin(theta_k(1))*thetaDot_k(2); 5*cos(theta_k(1))*thetaDot_k(1)+5*cos(theta_k(1))*cos(theta_k(2))*thetaDot_k(1) + 5*cos(theta_k(1))*cos(theta_k(2))*thetaDot_k(2)-5*sin(theta_k(1))*sin(theta_k(2))*thetaDot_k(1)-5*sin(theta_k(1))*sin(theta_k(2))*thetaDot_k(2)];
    vEffectorDot = zeros(2,size(theta,2));
    for i = 1:size(theta,2)
        vEffectorDot(:,i) = single_vertexEffectorDot(theta(:,i),thetaDot(:,i));
        % I know MATLAB has more powerful matrix-wize operators that could
        % achieve this, but I'm rusty and this gets the job done, even if
        % slightly slower.
    end
    % for 6.2 plotting purposes
    %hold on
    %for i = 1:8
    %    twolink_plot(theta(:,i),'g',thetaDot(:,i))
    %    pos = twolink_kinematicMap(theta(:,i));
    %    plot([pos(1) pos(1)+vEffectorDot(1,i)],[pos(2) pos(2)+vEffectorDot(2,i)])
    %end
    %axis equal
    vertexEffectorDot = vEffectorDot;
end


