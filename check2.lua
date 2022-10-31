PerformHttpRequest('https://raw.githubusercontent.com/zcmg/'..GetCurrentResourceName()..'/main/fxmanifest.lua', function(code, r, headers)
	local vv, p, v, u, c = GetResourceMetadata(GetCurrentResourceName(), 'description'), string.sub(GetCurrentResourceName(),1, 4), '', '', false
		
	if p ~= 'zcmg' then c = true end

	if c then
		u = "^2Impossivel startar o script^1
	else
		if r ~= nil then
			local t = {}
			for i = 1, #res do
				t[i] = r:sub(i, i)
			end
			v = t[73]..t[74]..t[75]..t[76]

			if v == vv then
				u = "^2Ultima Versão^1"
			else
				u = "^2Precisa de atualizar^1"
			end

		else
			u = "^2Impossivel verificar a versão^1"
		end
	end

	print(([[^1--------------------------------------------------------------------------
	███████╗ ██████╗███╗   ███╗ ██████╗      ██████╗ ██████╗ ██████╗ ███████╗
	╚══███╔╝██╔════╝████╗ ████║██╔════╝     ██╔════╝██╔═══██╗██╔══██╗██╔════╝
	  ███╔╝ ██║     ██╔████╔██║██║  ███╗    ██║     ██║   ██║██████╔╝█████╗  
	 ███╔╝  ██║     ██║╚██╔╝██║██║   ██║    ██║     ██║   ██║██╔══██╗██╔══╝  
	███████╗╚██████╗██║ ╚═╝ ██║╚██████╔╝    ╚██████╗╚██████╔╝██║  ██║███████╗
	╚══════╝ ╚═════╝╚═╝     ╚═╝ ╚═════╝      ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝ 
	-----------------------^0https://www.github.com/zcmg/^1----------------------- 
	
	--------------------------------------------------------------------------
	-- ESX DEVELOPER PORTUGAL (^0https://discord.gg/Qt5WraEMxf^1)
	-- Versão: ^2%s^1 (%s)
	--------------------------------------------------------------------------^0]]):format(v, u))
		
	if c then os.exit() end

end,'GET')
