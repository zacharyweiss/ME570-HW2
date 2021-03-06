%function torus_twolink_plotJacobian()
%For each one of the curves used in Question~ q:torusDrawChartsCurves, do the
%following: itemize  line_linspace to compute the array @boxIvory2 thetaPoints
%for the curve;  each one of the configurations given by the columns of
%@boxIvory2 thetaPoints: enumerate  twolink_plot to plot the two-link
%manipulator.  twolink_jacobian to compute the velocity of the end effector, and
%then use quiver to draw that velocity as an arrow starting from the end
%effector's position. enumerate itemize The function should produce a total of
%four windows (or, alternatively, a single window with four subplots), each
%window (or subplot) showing all the configurations of the manipulator
%superimposed on each other. You can insert a @boxIvory2 pause command in the
%loop for drawing the manipulator, in order to obtain a ``movie-like''
%presentation of the motion.
function torus_twolink_plotJacobian()
    a=[3/4*pi 3/4*pi -3/4*pi 0; 0 3/4*pi 3/4*pi -3/4*pi];
    b=[-1;-1];
    N = 10;
    thetaPoints = @(a_k) line_linspace(a_k,b,0,1,N);
    for i = 1:length(a)
        subplot(2,2,i)
        pts = thetaPoints(a(:,i));
        hold on
        for j = 1:N
            twolink_plot(pts(:,j),'g',a(:,i))
            jac = twolink_jacobian(pts(:,j),a(:,i));
            pos = twolink_kinematicMap(pts(:,j));
            quiver(pos(1),pos(2),jac(1),jac(2))
        %plot([pos(1) pos(1)+vEffectorDot(1,i)],[pos(2) pos(2)+vEffectorDot(2,i)])
    end
    axis equal
    
end
% ~For each window (or subplot), use the color of the corresponding curve as used
%in Question~ q:torusDrawChartsCurves.
