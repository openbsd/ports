# $OpenBSD: Makefile,v 1.8 2015/02/09 02:11:06 bcallah Exp $

SHARED_ONLY =	Yes

COMMENT =	module player library

DISTNAME =	libxmp-4.3.5
CATEGORIES =	audio

SHARED_LIBS +=	xmp		1.0	# 4.3

HOMEPAGE =	http://xmp.sourceforge.net/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

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
