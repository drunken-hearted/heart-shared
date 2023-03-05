if SERVER then
	resource.AddFile("resource/fonts/aurebesh.ttf");
	resource.AddFile("resource/fonts/proxima_nova_rg.ttf");
	resource.AddFile("resource/fonts/roboto_condensed.ttf");
else
	// FONTS --------------------------------------

	surface.CreateFont("heart_font_aurebeshlarge", {
		font = "Aurebesh",
		size = ScreenScale(10),
		weight = 500
	})

	surface.CreateFont("heart_font_aurebeshmid", {
		font = "Aurebesh",
		size = ScreenScale(6),
		weight = 500
	})
	
	surface.CreateFont("heart_font_aurebeshsmall", {
		font = "Aurebesh",
		size = ScreenScale(4),
		weight = 500
	})

	// ----------------------------------------------

	surface.CreateFont("heart_font_proximalarger_bold", {
		font = "Proxima Nova Rg",
		size = ScreenScale(11),
		weight = 800
	})

	surface.CreateFont("heart_font_proximalarge_bold", {
		font = "Proxima Nova Rg",
		size = ScreenScale(10),
		weight = 800
	})

	surface.CreateFont("heart_font_proximamid", {
		font = "Proxima Nova Rg",
		size = ScreenScale(7),
		weight = 500
	})
	surface.CreateFont("heart_font_proximasmall", {
		font = "Proxima Nova Rg",
		size = ScreenScale(5),
		weight = 500
	})

	surface.CreateFont("heart_font_proximasmall_bold", {
		font = "Proxima Nova Rg",
		size = ScreenScale(5),
		weight = 800
	})

	// ----------------------------------------------

	surface.CreateFont("heart_font_robotomid", {
		font = "Roboto Condensed",
		size = ScreenScale(8),
		weight = 500
	})

	heartfunctions = {};

	heartfunctions.hexagon = function(x, y, length)
		surface.DrawLine(x - length / 2, y - length * 0.875, x + length / 2, y - length * 0.875); //top line
		surface.DrawLine(x - length / 2, y + length * 0.875, x + length / 2, y + length * 0.875); //bottom line

		surface.DrawLine(x + length / 2, y - length * 0.875, x + length, y); //top right diagonal
		surface.DrawLine(x + length / 2, y + length * 0.875, x + length, y); //bottom right diagonal

		surface.DrawLine(x - length / 2, y - length * 0.875, x - length, y); //top left diagonal
		surface.DrawLine(x - length / 2, y + length * 0.875, x - length, y); //bottom left diagonal
	end
end