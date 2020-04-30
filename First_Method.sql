/*Get oldest person's detail 1st method*/

SELECT  citizen.ID AS '-ID',

        citizen.NAME AS '-NAME',

        citizen.AGE AS '-Age',

        city_names.NAME AS '-City'


FROM    citizen INNER JOIN city_names

        ON citizen.City_ID = city_names.ID

        WHERE AGE=(

            SELECT  MAX(AGE)
                    FROM
                        citizen INNER JOIN city_names
                    ON
                        citizen.City_ID = city_names.ID
                    WHERE
                        city_names.NAME='London'
        )
        OR
        AGE=(
            SELECT  MAX(AGE)
                    FROM
                        citizen INNER JOIN city_names
                    ON
                        citizen.City_ID = city_names.ID
                    WHERE
                        city_names.NAME='Ontario'
        )
        
;