function resetWorld(optns)
%-------------------------------------------------------------------------- 
% resetWorld()
% Calls Gazebo service to reset the world
% Input: (dict) optns
% Output: None
%-------------------------------------------------------------------------- 
    disp('Resetting the world...');
    
    % TODO: 01 Get robot handle
%UR5e = loadrobot('universalUR5e', DataFormat= "row");
    
    % TODO: 02 Create Empty Simulation message
%emptymsg = rosmessage("empty", "DataFormat", "struct");
    
    % TODO: 03 Call reset service
    res_client = rossvcclient('/gazebo/reset_world', 'DataFormat', 'Struct');
    res_req = rosmessage(res_client);
    call(res_client, res_req);
end