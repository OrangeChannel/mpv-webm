class MP4AVC extends Format
	new: =>
		@displayName = "MP4 (h264/AAC)"
		@videoCodec = "libx264"
		@audioCodec = "aac"
		@outputExtension = "mp4"
		@acceptsBitrate = true
		@acceptsCRF = true

	getFlags: =>
		{
			"--ovcopts-add=preset=#{options.h26x_preset}"
		}

formats["mp4-avc"] = MP4AVC!

class MP4HEVC extends Format
	new: =>
		@displayName = "MP4 (h265/AAC)"
		@videoCodec = "libx265"
		@audioCodec = "aac"
		@outputExtension = "mp4"
		@acceptsBitrate = true
		@acceptsCRF = true

	getFlags: =>
		{
			"--ovcopts-add=preset=#{options.h26x_preset}"
		}

formats["mp4-hevc"] = MP4HEVC!
