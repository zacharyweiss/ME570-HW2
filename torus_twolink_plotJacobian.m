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

% ~For each window (or subplot), use the color of the corresponding curve as used
%in Question~ q:torusDrawChartsCurves.
