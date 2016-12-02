# $OpenBSD: Makefile,v 1.18 2016/12/02 09:39:07 fcambus Exp $

COMMENT =	module player library

DISTNAME =	libxmp-4.4.1
CATEGORIES =	audio

SHARED_LIBS +=	xmp		1.0	# 4.4

HOMEPAGE =	http://xmp.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=xmp/}

WANTLIB +=	m

USE_GMAKE =	Yes

CONFIGURE_STYLE =	gnu

MAKE_FLAGS +=	V=1 \
		LIBxmp_VERSION=${LIBxmp_VERSION}

FAKE_FLAGS =	DESTDIR=${WRKINST}

.include <bsd.port.mk>
