COMMENT =		UPnP DLNA server with transcoding
CATEGORIES =		multimedia net

MODGO_MODNAME =		github.com/anacrolix/dms
MODGO_VERSION =		v1.8.0
DISTNAME =		dms-${MODGO_VERSION}
REVISION =		1

HOMEPAGE =		https://github.com/anacrolix/dms

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# BSD 3-clause
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

# make patch and update-patches work
WRKDIST =		${WRKSRC}

SITES.fixes =		https://${MODGO_MODNAME}/commit/
# merged "Unbreak build on OpenBSD"
# https://github.com/anacrolix/dms/pull/185
PATCHFILES.fixes +=	18d19ee076e5238875dbc9fd46a57b2c31f3b5a3.patch	
# merged "Unbreak ffprobe for IPv6-only HTTP listener addresses"
# https://github.com/anacrolix/dms/pull/187
PATCHFILES.fixes +=	71a9fc83eb284636ccc6813b5f73d7b3803a34d3.patch
# merged "Fix .dms.json not found when working directory differs from media path"
# https://github.com/anacrolix/dms/pull/188
PATCHFILES.fixes +=	a89307863fc69f668e7a06975dc9710c85c41841.patch
PATCH_DIST_STRIP =	-p1

MODULES =		lang/go

# '-forceTranscodeTo vp8' currently wants unported avconv, but that is subject
# to change upstream already, so just leave it.
RUN_DEPENDS =		graphics/ffmpeg \
			graphics/ffmpegthumbnailer

.include "modules.inc"
.include <bsd.port.mk>
