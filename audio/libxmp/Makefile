# $OpenBSD: Makefile,v 1.19 2019/07/12 20:43:35 sthen Exp $

COMMENT =	module player library

DISTNAME =	libxmp-4.4.1
CATEGORIES =	audio

SHARED_LIBS +=	xmp		1.0	# 4.4

HOMEPAGE =	http://xmp.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=xmp/}

WANTLIB +=	m

USE_GMAKE =	Yes

CONFIGURE_STYLE =	gnu

MAKE_FLAGS +=	V=1 \
		LIBxmp_VERSION=${LIBxmp_VERSION}

FAKE_FLAGS =	DESTDIR=${WRKINST}

.include <bsd.port.mk>
