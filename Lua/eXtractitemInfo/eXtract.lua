LuaQ  	   @ext.lua                 A@  @ $     $@  À  $    $À  @ $   $@ À $    ÀB A  @ @   @         dofile    itemInfo.lub    main    AddItem 	   AddItem2 	   AddItem3    AddItemUnidentifiedDesc    AddItemIdentifiedDesc    AddFunction    file    io    open    ConverteditemInfo.lua    w                 K      @@   @À  E    EÁ ÆBBB\Á  GA EÁ  B\ÀÂ À ÂÇ B B B     Å a  @üE ÆACC\Á  GA EÁ  ÁC\À À ÂÇ B B B     Å a  @üEA ÆDÂD\Á  GA !   ñ  À G @   A@          file    write 	   tbl = {
    pairs    tbl    result    msg    AddItem    unidentifiedDisplayName    unidentifiedResourceName    unidentifiedDescriptionName    AddItemUnidentifiedDesc 	   AddItem2    identifiedDisplayName    identifiedResourceName    identifiedDescriptionName    AddItemIdentifiedDesc 	   AddItem3 
   slotCount 	   ClassNum    AddFunction    good     K                                                                              	   	   	   
   
   
                                                                                                                                             (for generator)    C      (for state)    C      (for control)    C      ItemID    A      DESC    A      (for generator)    !      (for state)    !      (for control)    !      k          v          (for generator) +   :      (for state) +   :      (for control) +   :      k ,   8      v ,   8                      Å   Ë@ÀA    ÁÁ    A  ÁB UÁÜ@Â   Þ         file    write    	[ $   ] = {
		unidentifiedDisplayName = " "   ",
		unidentifiedResourceName = " &   ",
		unidentifiedDescriptionName = {
       ð?                                                          a           b           c                   "     
   Å   Ë@ÀA   ÁÁ    A UAÜ@Â  A Þ         file    write !   		},
		identifiedDisplayName = "     ",
		identifiedResourceName = " $   ",
		identifiedDescriptionName = {
       ð?                                           !   !   !   "         a           b           c                $   '     
   Å   Ë@ÀA   ÁÁ    A UAÜ@Â  A Þ         file    write    		},
		slotCount =     ,
		ClassNum =     
	},
       ð?       %   %   %   %   %   %   %   %   %   &   &   &   '         a           b           c                )   ,           @@  @ Á  @  Á           file    write    			"    ",
       ð?       *   *   *   *   *   *   *   +   +   +   ,         a     
      b     
           .   1           @@  @ Á  @  Á           file    write    			"    ",
       ð?       /   /   /   /   /   /   /   0   0   0   1         a     
      b     
           3   6            @@   @  AÀ           file    write   }

function main()
	for ItemID, DESC in pairs(tbl) do
		result, msg = AddItem(ItemID, DESC.unidentifiedDisplayName, DESC.unidentifiedResourceName, DESC.identifiedDisplayName, DESC.identifiedResourceName, DESC.slotCount, DESC.ClassNum)
		if not result then
			return false, msg
		end
		for k, v in pairs(DESC.unidentifiedDescriptionName) do
			result, msg = AddItemUnidentifiedDesc(ItemID, v)
			if not result then
				return false, msg
			end
		end
		for k, v in pairs(DESC.identifiedDescriptionName) do
			result, msg = AddItemIdentifiedDesc(ItemID, v)
			if not result then
				return false, msg
			end
		end
	end
	return true, "good"
end
       ð?       4   4   4   4   5   5   5   6                                   "      '   $   ,   )   1   .   6   3   8   8   8   8   8   8   9   9   9           