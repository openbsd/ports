# $OpenBSD: Makefile,v 1.14 2016/01/08 21:16:51 jasper Exp $

SHARED_ONLY =	Yes

COMMENT =	module player library

DISTNAME =	libxmp-4.3.10
CATEGORIES =	audio

SHARED_LIBS +=	xmp		1.0	# 4.3

HOMEPAGE =	http://xmp.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=xmp/}

WANTLIB += m

USE_GMAKE =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED}

MAKE_FLAGS +=	V=1 \
		LIBxmp_VERSION=${LIBxmp_VERSION}

FAKE_FLAGS =	DESTDIR=${WRKINST}

.include <bsd.port.mk>
