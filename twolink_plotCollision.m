%function twolink_plotCollision(theta,points)
%This function should: enumerate  the points specified by  @x   points as black
%asterisks.  twolink_isCollision for determining if each configuration is a
%collision or not.  twolink_plot to plot the manipulator for all configurations,
%using a red color when the manipulator is in collision, and green otherwise.
%enumerate
function twolink_plotCollision(theta,points)
    flagTheta = twolink_isCollision(theta,points);
    if (any(flagTheta))
        twolink_plot(theta,'r')
    else
        twolink_plot(theta,'g')
    end
    hold on
    scatter(points(1,:),points(2,:),'filled')
    axis equal
end