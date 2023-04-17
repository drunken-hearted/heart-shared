if CLIENT then
	// exactly what it looks like, legacy stuff

	function vanillaBlurPanel(x, y, w, h, color)
		if color.a == 0 then return end

		blur:SetFloat("$blur", 5);
		blur:Recompute();
		render.UpdateScreenEffectTexture();

		//blur
		surface.SetDrawColor(255,255,255,255);
		surface.SetMaterial(blur);

		render.SetScissorRect(x,y,x + w,y + h,true);
		surface.DrawTexturedRect(0, 0, ScrW(), ScrH());
		render.SetScissorRect(0, 0, 0, 0, false);

		//panel
		surface.SetDrawColor(color);
		surface.DrawRect(x,y,w,h);
	end
end