class WebmVP9 extends Format
	new: =>
		@displayName = "WebM (VP9)"
		@videoCodec = "libvpx-vp9"
		@audioCodec = "libopus"
		@outputExtension = "webm"
		@acceptsBitrate = true
		@acceptsCRF = true

	getFlags: =>
		{
			"--ovcopts-add=threads=#{options.libvpx_threads}",
			"--ovcopts-add=quality=#{options.libvpx_quality}"
		}

formats["webm-vp9"] = WebmVP9!
