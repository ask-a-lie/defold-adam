-- luacheck: ignore


---@class actions.debug
local actions__debug = {}

--- Instantly trigger event.
---@param event_name string The event to send
function actions__debug.event(event_name) end

--- Print text to console
---@param text string The log message
function actions__debug.print(text) end


---@class actions.fsm
local actions__fsm = {}

--- Broadcast event to all active FSM
---@param event_name string The event to send
---@param is_exclude_self bool Don't send the event to self
---@param delay number Time delay in seconds
function actions__fsm.broadcast_event(event_name, is_exclude_self, delay) end

--- Send event to target DMaker instance
---@param target string|dmaker The target instance for send event. If there are several instances with equal ID, event will be delivered to all of them.
---@param event_name string The event to send
---@param delay number Time delay in seconds
---@param is_every_frame bool Repeat every frame
function actions__fsm.send_event(target, event_name, delay, is_every_frame) end


---@class actions.math
local actions__math = {}

--- Add operator
---@param source string The variable name from DMaker instance
---@param value number|variable The number or Dmaker variable to add
---@param is_every_frame boolean Check true, if action should be called every frame
---@param is_every_second boolean Chec true, if action should be called every second. Initial call is not skipped
function actions__math.add(source, value, is_every_frame, is_every_second) end


---@class actions.time
local actions__time = {}

--- Trigger event after time elapsed.
---@param seconds number Amount of seconds for delay
---@param trigger_event string Name of trigger event
function actions__time.delay(seconds, trigger_event) end


---@class dmaker
local dmaker = {}

--- Create new instance of dmaker FSM
---@param params unknown
function dmaker.new(params) end

--- Return state to use it in dmaker FSM
---@param ... unknown
function dmaker.state(...) end


---@class dmaker.actions
---@field debug actions.debug Submodule
---@field fsm actions.fsm Submodule
---@field math actions.math Submodule
---@field time actions.time Submodule
local dmaker__actions = {}

--- Return value from FSM variables for action params
---@param variable_name string The variable name in DMaker instance
function dmaker__actions.value(variable_name) end

