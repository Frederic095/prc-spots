%dw 2.0
output application/json

var users = vars.users
var climbingConditions = vars.climbingConditions

---

users map (user) ->
	{
	user: user,
	"climbing-spots": (flatten(climbingConditions) filter (item) -> item.grade.level == user.level)
}
