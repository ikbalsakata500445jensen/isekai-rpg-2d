shader_type canvas_item;

// Sovereign Hit Damage Flash Shader
uniform bool flash_active = false;
uniform vec4 flash_color : source_color = vec4(1.0, 1.0, 1.0, 1.0);

void fragment() {
	vec4 tex_color = texture(TEXTURE, UV);
	if (flash_active && tex_color.a > 0.0) {
		COLOR = mix(tex_color, flash_color, 0.50);
	} else {
		COLOR = tex_color;
	}
}
