/// @description Insert description here
// You can write your code in this editor

instance_deactivate_layer("Level_Instance_Layer");
instance_deactivate_layer("Level_Assets_Layer");

layer_set_visible("Level_Instance_Layer", false);
layer_set_visible("Level_Assets_Layer", false);

instance_activate_layer("Instances");
instance_activate_layer("Assets_1");

layer_set_visible("Instances", true);
layer_set_visible("Assets_1", true);
