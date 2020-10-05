%function [xTorus]=torus_phi(theta)
%Implements equation    @  (  eq:chartTorus \@@italiccorr ).
function [xTorus]=torus_phi(theta)
    single_torus = @(theta_k)blkdiag(rot2d(theta_k(2)),1)*([1,0;0,0;0,1]*(rot2d(theta_k(1))*[1;0])+[3;0;0]);
    cell_torus = cellfun(single_torus,mat2cell(theta',ones([1 size(theta,2)])),'UniformOutput',false);
    xTorus = reshape(vertcat(cell_torus{:}),[3 size(theta,2)]);
end