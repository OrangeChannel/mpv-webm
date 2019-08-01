class AV1 extends Format
	new: =>
		@displayName = "AV1"
		@supportsTwopass = true
		@videoCodec = "libaom-av1"
		@audioCodec = "libopus"
		@outputExtension = "webm"
		@acceptsBitrate = true
		@acceptsCRF = true

	getFlags: =>
		{
			"--ovcopts-add=strict=experimental"
		}

formats["av1"] = AV1!
