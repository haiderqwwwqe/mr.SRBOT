-- made by { @KINGTELE1 }
do
ws = {}
rs = {}

-- some examples of how to use this :3 
ws[1] = "هلاو" -- msg 
rs[1] =  "هلاوو99وووات 😂🖕عيوني 🙊😋نورت/ي   @roroc1  ❤️🙈" -- reply
ws[2] = "شلونكم" -- msg
rs[2] = "اني بالنسبة اليه تعبان تعبوني الادمنيه  شوف بقيه الاعضااء 😂🖕" -- reply
ws[3] = "ضوجه" -- msg 
rs[3] = "و المطلوب شنو اركصلك/ج مثلا 🙊😋" -- reply
ws[4] = "بوت" -- msg
rs[4] = "اي بوت🙄 ما مصدك اتريد احلف🙀 الك🌚✋" -- reply

ws[5] = "اتفل" -- msg 
rs[5] = "اتفل عليك😼🌝" -- reply

ws[6] = "حيدور" -- msg 
rs[6] = "مــجــنــنـ😻كــم فــــ❤️يـــتـــه 🌚🌹" -- reply

ws[7] = "حيدوري" -- msg 
rs[7] = "اخـہـخ 😨 صـہـاككے اڵـہـكڕۆب 🙈 ۿـہـۮا 🏻️  💜😻" -- reply

ws[8] = "المدير" -- msg 
rs[8] = "اشـش كــــول عــــمــــو حــــــيـــدر 🌚🚶🏻" -- reply

ws[9] = "بنين" -- msg 
rs[9] = "العشق فديت ربه 🌚🚶🏻" -- reply

ws[10] = "حيدر" -- msg 
rs[10] = "العشق مالتي يعني الصنعني فديته❤️" -- reply

ws[11] = "تعال" 
rs[11] =  "اوكف انطي مجال😳☹️لك شوف الحاتات دوخني😚" 

ws[12] = "سربوت" -- msg
rs[12] = "نہظہرأتہ ❤️عہيہونہه❤️ لسہربہوت🙊" -- reply

ws[13] = "اريد بوت" -- msg
rs[13] = "  @haiderqwwq97_bot   💜😻 ترٍيدِ بَوُت  تعٍآلُِ  💜😻 هـنآ آفُضلُِ بَوُت وُرٍوُحٍ حٍبَوُبَتي " -- reply
ws[14] = "تبادل" — msg
rs[14] = "هـ♥̨̥̬̩نآإ تـ♥̨̥̬̩بـ♥̨̥̬̩آإدل يول       @roroc1" — reply
-- the main function
function run( msg, matches )
	-- just a local variables that i used in my algorithm  
	local i = 0; local w = false

	-- the main part that get the message that the user send and check if it equals to one of the words in the ws table :)
	-- this section loops through all the words table and assign { k } to the word index and { v } to the word itself 
	for k,v in pairs(ws) do
		-- change the message text to uppercase and the { v } value that toke form the { ws } table and than compare it in a specific pattern 
		if ( string.find(string.upper(msg.text), "^" .. string.upper(v) .. "$") ) then
			-- assign the { i } to the index of the reply and the { w } to true ( we will use it later )
			i = k; w = true;
		end
	end

	-- check if { w } is not false and { i } not equals to 0
	if ( (w ~= false) and (i ~= 0) ) then
		-- get the receiver :3 
		R = get_receiver(msg)
		-- send him the proper message from the index that { i } assigned to
		--send_large_msg ( R , rs[i] );
		--send_reply(msg.id, rs[i])
		reply_msg(msg.id, rs[i], ok_cb, false )
	end
	
	-- don't edit this section
	if ( msg.text == "about" ) then
		if ( msg.from.username == "TH3BOSS" ) then
			R = get_receiver(msg)
			send_large_msg ( R , "Made by @sadikal_knani10" );
		end
	end 

end

-- made by { @DEV_PRO }
do
ws = {}
rs = {}

-- some examples of how to use this :3 
ws[1] = "هلاو" -- msg 
rs[1] =  "هلاوو99وووات عيوني نورت/ي ❤️🙈" -- reply



-- the main function
function run( msg, matches )
	-- just a local variables that i used in my algorithm  
	local i = 0; local w = false

	-- the main part that get the message that the user send and check if it equals to one of the words in the ws table :)
	-- this section loops through all the words table and assign { k } to the word index and { v } to the word itself 
	for k,v in pairs(ws) do
		-- change the message text to uppercase and the { v } value that toke form the { ws } table and than compare it in a specific pattern 
		if ( string.find(string.upper(msg.text), "^" .. string.upper(v) .. "$") ) then
			-- assign the { i } to the index of the reply and the { w } to true ( we will use it later )
			i = k; w = true;
		end
	end

	-- check if { w } is not false and { i } not equals to 0
	if ( (w ~= false) and (i ~= 0) ) then
		-- get the receiver :3 
		R = get_receiver(msg)
		-- send him the proper message from the index that { i } assigned to
		--send_large_msg ( R , rs[i] );
		--send_reply(msg.id, rs[i])
		reply_msg(msg.id, rs[i], ok_cb, false )
	end
	
	-- don't edit this section
	if ( msg.text == "about" ) then
		if ( msg.from.username == "TH3BOSS" ) then
			R = get_receiver(msg)
			send_large_msg ( R , "Made by @Sadikal_knani10" );
		end
	end 

end



return {
	patterns = {
		"(.*)"		
  	},
  	run = run
} 	


end

return {
	patterns = {
		"(.*)"		
  	},
  	run = run
} 	


end
