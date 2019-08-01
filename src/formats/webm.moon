class WebmVP9 extends Format
	new: =>
		@displayName = "WebM (VP9)"
		@supportsTwopass = true
		@videoCodec = "libvpx-vp9"
		@audioCodec = "libopus"
		@outputExtension = "webm"
		@acceptsBitrate = true
		@acceptsCRF = true

	getFlags: =>
		{
			"--ovcopts-add=threads=#{options.libvpx_threads}"
		}

formats["webm-vp9"] = WebmVP9!
