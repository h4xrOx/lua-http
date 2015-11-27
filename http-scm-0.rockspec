package = "http"
version = "scm-0"

description = {
	summary = "HTTP library for Lua";
	homepage = "https://github.com/daurnimator/lua-http";
	license = "MIT/X11";
}

source = {
	url = "git+https://github.com/daurnimator/lua-http.git";
}

dependencies = {
	"lua >= 5.1";
	"compat53 >= 0.3"; -- Only if lua < 5.3
	"bit32"; -- Only if lua == 5.1
	"cqueues >= 20150907";
	"luaossl >= 20150727";
	"fifo";
}

build = {
	type = "builtin";
	modules = {
		["http.bit"] = "http/bit.lua";
		["http.h1_connection"] = "http/h1_connection.lua";
		["http.h1_reason_phrases"] = "http/h1_reason_phrases.lua";
		["http.h1_stream"] = "http/h1_stream.lua";
		["http.h2_connection"] = "http/h2_connection.lua";
		["http.h2_error"] = "http/h2_error.lua";
		["http.h2_stream"] = "http/h2_stream.lua";
		["http.headers"] = "http/headers.lua";
		["http.hpack"] = "http/hpack.lua";
		["http.stream_common"] = "http/stream_common.lua";
		["http.tls"] = "http/tls.lua";
		["http.util"] = "http/util.lua";
		["http.zlib"] = "http/zlib.lua";
	};
}
