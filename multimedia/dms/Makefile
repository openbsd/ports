COMMENT =		UPnP DLNA server with transcoding
CATEGORIES =		multimedia net

MODGO_MODNAME =		github.com/anacrolix/dms
MODGO_VERSION =		v1.8.0
DISTNAME =		dms-${MODGO_VERSION}
REVISION =		0

HOMEPAGE =		https://github.com/anacrolix/dms

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# BSD 3-clause
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

# make patch and update-patches work
WRKDIST =		${WRKSRC}

MODULES =		lang/go

# '-forceTranscodeTo vp8' currently wants unported avconv, but that is subject
# to change upstream already, so just leave it.
RUN_DEPENDS =		graphics/ffmpeg \
			graphics/ffmpegthumbnailer

.include "modules.inc"
.include <bsd.port.mk>
