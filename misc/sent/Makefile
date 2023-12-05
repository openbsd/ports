COMMENT=		simple plaintext presentation tool

DISTNAME=		sent-1
REVISION=		0

CATEGORIES=		misc productivity

HOMEPAGE=		http://tools.suckless.org/sent

MAINTAINER =		Brian Callahan <bcallah@openbsd.org>

# MIT/X
PERMIT_PACKAGE=	Yes

WANTLIB=		X11 Xft c fontconfig m

SITES=			http://dl.suckless.org/tools/
SITES.p=		https://tools.suckless.org/sent/patches/cmdline_options/

PATCHFILES.p=		sent-options-20190213-72d33d4.diff
PATCH_DIST_STRIP=	-p1

RUN_DEPENDS=		archivers/bzip2 \
			graphics/farbfeld

MAKE_FLAGS=		CC="${CC}"
MAKE_ENV=		LDFLAGS="${LDFLAGS}"
FAKE_FLAGS=		DESTDIR=""

NO_TEST=		Yes

WRKDIST =		${WRKDIR}

.include <bsd.port.mk>
