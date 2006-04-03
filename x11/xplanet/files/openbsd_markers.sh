#!/bin/sh
#
# $OpenBSD: openbsd_markers.sh,v 1.1 2006/04/03 17:06:04 robert Exp $
#
# This script will create a JPEG image named mercator.jpg with a
# resolution of 1024x768 with the OpenBSD markers file.
#

%%LOCALBASE%%/bin/xplanet \
		-config %%LOCALBASE%%/share/xplanet/config/openbsd_markers \
		-num_times 1 -pango -fontsize 6 -geometry 1024x768 \
		-projection mercator -output mercator.jpg
