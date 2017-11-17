/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 55380573
/// @DnDArgument : "code" "PlayerMove();$(13_10)//depth = -y;$(13_10)if(mystep%4==0){$(13_10)if (flag=0){$(13_10)myradius -=1;$(13_10)count++;$(13_10)}$(13_10)else{$(13_10)myradius +=1;$(13_10)count--;$(13_10)}$(13_10)if(count == 8)$(13_10)flag = 1;$(13_10)if(count ==0)$(13_10)flag =0;$(13_10)}$(13_10)mystep++;$(13_10)if(mystep == 504)$(13_10)mystep=0;$(13_10)$(13_10)player.leftrun =1;$(13_10)player.rightrun =1;$(13_10)player.uprun =1;$(13_10)player.downrun =1;$(13_10)$(13_10)player.firebtn =1;$(13_10)"
PlayerMove();
//depth = -y;
if(mystep%4==0){
if (flag=0){
myradius -=1;
count++;
}
else{
myradius +=1;
count--;
}
if(count == 8)
flag = 1;
if(count ==0)
flag =0;
}
mystep++;
if(mystep == 504)
mystep=0;

player.leftrun =1;
player.rightrun =1;
player.uprun =1;
player.downrun =1;

player.firebtn =1;