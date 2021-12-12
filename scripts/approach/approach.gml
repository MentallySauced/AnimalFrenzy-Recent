// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function approach(){
	var current_val = argument[0];
	var target_val = argument[1];
	var change_amt = argument[2];
	
	if (current_val < target_val) {
		current_val += change_amt;
		current_val = min(current_val, target_val);
		
	} else {
		current_val -= change_amt;
		current_val = max(current_val, target_val);
	}
	
	return current_val;
}