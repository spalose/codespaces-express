// texture: http://localhost:3000/.devcontainer/img/pngtest.png
precision mediump float;

uniform vec2 u_resolution;
uniform sampler2D u_texture;

void main() {
    vec2 uv = gl_FragCoord.xy / u_resolution.xy;
    vec4 texColor = texture2D(u_texture, uv);
    gl_FragColor = texColor;
}