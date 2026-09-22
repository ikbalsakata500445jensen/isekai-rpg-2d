shader_type spatial;
render_mode depth_draw_opaque;

// Sovereign Magical Dissolve & Ember Burn Shader
uniform float progress : hint_range(0.0, 1.0) = 0.0;
uniform vec4 burn_color : source_color = vec4(1.0, 0.3, 0.0, 1.0);
uniform float burn_width = 0.05;
uniform sampler2D noise_texture;

void fragment() {
	float noise_val = texture(noise_texture, UV * 3.0).r;
	if (noise_val < progress) {
		discard;
	}
	if (noise_val < progress + burn_width) {
		ALBEDO = burn_color.rgb * 3.0;
		EMISSION = burn_color.rgb * 5.0;
	}
}
