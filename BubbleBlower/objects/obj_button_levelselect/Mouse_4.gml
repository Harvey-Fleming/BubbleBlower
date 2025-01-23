/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

instance_activate_layer("Level_Instance_Layer");
instance_activate_layer("Level_Assets_Layer");

layer_set_visible("Level_Instance_Layer", true);
layer_set_visible("Level_Assets_Layer", true);

instance_deactivate_layer("Instances");
instance_deactivate_layer("Assets_1");

layer_set_visible("Instances", false);
layer_set_visible("Assets_1", false);
