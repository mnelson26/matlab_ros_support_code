function models = getModels(optns)
%-------------------------------------------------------------------------- 
% getModels
% This method will create an action client that talks to Gazebo's
% get_world_properties to get all models.
%
% Inputs: (dict) optns
% Output: (gazebo_msgs/GetWorldPropertiesResponse cell): models
%--------------------------------------------------------------------------
    % TODO: 01 Get robot handle
    %UR5e = loadrobot('universalUR5e', DataFormat="row");
    
    % TODO: 02 Create model_client_msg 
    %model_client_msg = rosmessage('gazebo_msgs/GetWorldPropertiesResponse', 'DataFormat', 'struct');
    r = optns{'rHandle'};
    % TODO: 03 Call client 
     model_client = r.get_models_client;  % This should be a rossvcclient

    % Create the request message
    model_req = rosmessage(model_client);
    models = call(model_client, model_req);
end