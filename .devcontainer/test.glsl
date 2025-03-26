// texture: star.png

precision mediump float;

uniform vec2 u_resolution;
uniform sampler2D u_texture;  // This will be your PNG image

void main() {
    // Calculate UV coordinates (0.0 to 1.0)
    vec2 uv = gl_FragCoord.xy / u_resolution.xy;
    
    // Sample the texture at the current UV coordinate
    vec4 texColor = texture2D(u_texture, uv);
    
    // Output the texture color
    gl_FragColor = texColor;
}