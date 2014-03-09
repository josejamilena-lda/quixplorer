<?php

Qx::useModule("Security");

class Action
{
    private function __construct ($action, $activity)
    {
        $this->action = action;
        $this->activity = activity;
        $this->parameters = parameters;
    }

    public static function getCurrentAction()
    {
        $action = Security::request("action", "list");
        $activity = Security::request("activity", "default");
        $Action = new Action($action, $activity);
        $Action->directory = Security::request("dir");
        return $Action;
    }
}
?>
