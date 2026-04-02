%dw 2.0
output application/json

var areas = vars.areas
var weathers = vars.weathers


fun matchCoordinates(area, weather) =
    area.coordinates.latitude == weather.coordinates.latitude and
    area.coordinates.longitude == weather.coordinates.longitude

---

(areas default []) map (area) -> 
    area ++ {
        forecast: (
            (
                (flatten(weathers) default [])
                    filter (weather) -> matchCoordinates(area, weather)
            )[0] default {}
        ) - "coordinates"
    }