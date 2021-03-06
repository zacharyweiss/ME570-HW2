%function torus_plotCharts()
%For each one of the chart domains $U_i$ from the previous question: enumerate  a
% @x   grid structure with fields  @x   xx and  @x   yy that define a grid of
%regular point in $U_i$. Use  @x   NGrid=33.  the function grid_eval with
%argument  @x   grid and torus_phi.  the surface described by the values in  @x  
%grid.F using the Matlab function surf. enumerate
function torus_plotCharts()
    NGrid = 33;
    grid = struct('xx',(2*pi/NGrid)*[1:NGrid],'yy',(2*pi/NGrid)*[1:NGrid]);
    grid = grid_eval(grid,@torus_phi);
    hold on
    axis equal
    g_e = [24:33 1:9]; % edges
    g_c = [8:25]; % center
    CO(:,:,1) = ones(NGrid); % red
    CO(:,:,2) = ones(NGrid); % green
    CO(:,:,3) = ones(NGrid); % blue
    C1 = CO;
    C1(:,:,1:2) = 0;
    C2 = CO;
    C2(:,:,2:3) = 0;
    C3 = CO;
    C3(:,:,[1 3]) = 0;
    surf(grid.F(g_e,g_e,1),grid.F(g_e,g_e,2),grid.F(g_e,g_e,3),CO(g_e,g_e,:),'FaceAlpha',0.5)
    surf(grid.F(g_c,g_c,1),grid.F(g_c,g_c,2),grid.F(g_c,g_c,3),C1(g_c,g_c,:),'FaceAlpha',0.5)
    surf(grid.F(g_c,g_e,1),grid.F(g_c,g_e,2),grid.F(g_c,g_e,3),C2(g_c,g_e,:),'FaceAlpha',0.5)
    surf(grid.F(g_e,g_c,1),grid.F(g_e,g_c,2),grid.F(g_e,g_c,3),C3(g_e,g_c,:),'FaceAlpha',0.5)
end
%Use the commands  @x   hold on and  @x   hold off to show all the charts on the
%same figure. To better show the overlap between the charts, you can use
%different colors each one of them, and the  @x     FaceAlpha  ,0.75 option for
%surf.
