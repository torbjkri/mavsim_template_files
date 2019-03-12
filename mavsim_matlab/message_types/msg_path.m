% msg_path
%   - message type for path following
%
% mavsim_matlab 
%     - Beard & McLain, PUP, 2012
%     - Update history:  
%         3/12/2019 - RWB
classdef msg_path
   %--------------------------------
    properties
        flag
        airspeed
        line_origin
        line_direction
        orbit_center
        orbit_radius
        orbit_direction
    end
    %--------------------------------
    methods
        %------constructor-----------
        function self = msg_path()
            % flag can equal 'line' or 'orbit
            self.flag = 'line';
            % the airspeed that is commanded along the path
            self.airspeed = 25;
            % the origin of the line segement (r)
            self.line_origin = [0; 0; 0];
            % a unit vector that describes the direction of the line (q)
            self.line_direction = [1; 0; 0]; % unit vector
            % center of the orbit (c)
            self.orbit_center = [0; 0; 0];  
            % radius of the orbit (rho)
            self.orbit_radius = 50;
            % orbit direction: 'CW'==clockwise, 'CCW'==counter clockwise
            self.orbit_direction = 'CW';        
        end
    end
end