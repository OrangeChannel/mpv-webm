class MP4 extends Format
	new: =>
		@displayName = "MP4 (h264/AAC)"
		@videoCodec = "libx264"
		@audioCodec = "aac"
		@outputExtension = "mp4"
		@acceptsBitrate = true
		@acceptsCRF = true

	getFlags: =>
		{
			"--ovcopts-add=preset=#{options.x264_preset}"
		}


formats["mp4"] = MP4!

class MP4NVENC extends Format
	new: =>
		@displayName = "MP4 (h264-NVENC/AAC)"
		@videoCodec = "h264_nvenc"
		@audioCodec = "aac"
		@outputExtension = "mp4"
		@acceptsBitrate = true

formats["mp4-nvenc"] = MP4NVENC!
