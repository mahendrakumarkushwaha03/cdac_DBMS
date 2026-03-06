use rtudb;

#1.Display RTU details along with sensor details for all RTU's

select r.rtu_id, r.location, r.ip_address, s.sensor_id, s.status, s.sensor_type, s.req_val,s.curr_val from rtu r 
join sensors s on r.rtu_id = s.rtu_id;

#2.Display user details and sensor details controlled by each user.
 
select u.user_id,u.user_name,u.role,c.sensor_id,s.sensor_type from users u join controller c on
u.user_id = c.user_id join sensors s on c.sensor_id = s.sensor_id;
 
#3.Display user details and sensor details controlled by each user alongwith RTU details.

select u.user_id,u.user_name,u.role,c.sensor_id,s.sensor_type, r.rtu_id, R.location from users u join controller c on
u.user_id = c.user_id join sensors s on c.sensor_id = s.sensor_id join rtu r on s.rtu_id=r.rtu_id;

#4.List how many sensors are controlled by each user. Display user_name and count. Sort on count.

select u.user_name, count(c.sensor_id) as Sensor_count from users u join controller c 
on u.user_id = c.user_id group by user_name order by Sensor_count DESC; 

#5.Display user details who are controlling sensor_type TEMPERATURE

select u.user_id, u.user_name, c.sensor_id, s.sensor_type from users u join controller c 
on u.user_id=c.user_id join sensors s on c.sensor_id=s.sensor_id
where sensor_type='Temperature';

#6. Display user details that is controlling sensor S801 along with sensor details and location.

select u.user_id, u.user_name, s.sensor_type, s.sensor_id, r.rtu_id, r.location from users u join controller c 
on u.user_id=c.user_id join sensors s on c.sensor_id = s.sensor_id join rtu r on s.rtu_id=r.rtu_id
where s.sensor_id=801;



