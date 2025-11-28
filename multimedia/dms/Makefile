COMMENT =		UPnP DLNA server with transcoding
CATEGORIES =		multimedia net

MODGO_MODNAME =		github.com/anacrolix/dms
MODGO_VERSION =		v1.7.2
DISTNAME =		dms-${MODGO_VERSION}

HOMEPAGE =		https://github.com/anacrolix/dms

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# BSD 3-clause
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

SITES.ipv6 =		https://${MODGO_MODNAME}/commit/
# first commit after release: "feat: add IPv6 support for SSDP"
PATCHFILES.ipv6 =	105c744ed2138c85167c2d8b66cb3830694fba24.patch
# pending "Ensure :: in -http argument ends up as IPv6 socket"
# https://github.com/anacrolix/dms/pull/171
PATCHFILES.ipv6 +=	a16a4b302c6525a13acbb4c22571a19c2a62a905.patch
PATCH_DIST_STRIP =	-p1

# make patch and update-patches work
WRKDIST =		${WRKSRC}

MODULES =		lang/go

# '-forceTranscodeTo vp8' currently wants unported avconv, but that is subject
# to change upstream already, so just leave it.
RUN_DEPENDS =		graphics/ffmpeg \
			graphics/ffmpegthumbnailer

.include "modules.inc"
.include <bsd.port.mk>
