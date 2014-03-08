max_hfov = 360
max_vfov = 180

lens_width = 2*pi

onload = "f_fit"

function lens_inverse(x,y)
   if abs(x) > pi then
      return nil
   end
   local lon = x
   local lat = atan(y)
   return latlon_to_ray(lat,lon)
end

function lens_forward(x,y,z)
   local lat,lon = ray_to_latlon(x,y,z)
   local x = lon
   local y = tan(lat)
   return x,y
end
