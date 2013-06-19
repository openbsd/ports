# $OpenBSD: Makefile,v 1.1.1.1 2013/06/19 15:55:03 shadchin Exp $

SHARED_ONLY =	Yes

COMMENT =	module player library

DISTNAME =	libxmp-4.1.5
CATEGORIES =	audio

SHARED_LIBS +=	xmp		0.0	# 4.1

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
