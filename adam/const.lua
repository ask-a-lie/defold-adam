local M = {}


M.SECOND = 1
M.MAX_STACK_DEPTH = 5000
M.EMPTY_FUNCTION = function() end

M.NONE_STATE = "none"
M.INIT_EVENT = "init"
M.FINISHED = "finished"
M.TYPE_TABLE = "table"

M.ANY_STATE = nil
M.WILDCARD = "*"

M.ACTIONS_TEMPLATE = "adam:actions_template"
M.GET_ACTION_VALUE = "adam:get_action_value"

M.TRIGGER_RESPONSE = hash("trigger_response")

M.EVENT = {
	TRIGGER_ENTER = "adam:trigger_enter",
	TRIGGER_LEAVE = "adam:trigger_leave",
	ACTION_PRESSED = "adam:action_pressed",
	ACTION_RELEASED = "adam:action_released"
}

M.ERROR = {
	NO_BINDED_STATE = "No binded state instance to action instance",
	NO_DEFINED_VARIABLE = "The variable for FSM is not defined",
	MAX_STACK_DEPTH_REACHED = "The Adam FSM reached max depth stack in one frame",
	WRONG_TIME_PARAMS_EVERY_FRAME = "Action can not executed every frame and have time to execute",
}


return M