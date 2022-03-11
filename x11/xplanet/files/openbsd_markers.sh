#!/bin/sh
#
# This script will create a JPEG image named mercator.jpg with a
# resolution of 1024x768 with the OpenBSD markers file.
#

%%LOCALBASE%%/bin/xplanet \
		-config %%LOCALBASE%%/share/xplanet/config/openbsd_markers \
		-num_times 1 -pango -fontsize 6 -geometry 1024x768 \
		-projection mercator -output mercator.jpg
