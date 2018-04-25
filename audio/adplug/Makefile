# $OpenBSD: Makefile,v 1.8 2018/04/25 21:42:09 fcambus Exp $

COMMENT =	AdLib sound player library

V =		2.3.1
DISTNAME =	adplug-${V}
SHARED_LIBS +=	adplug	1.0

CATEGORIES =	audio

HOMEPAGE =	https://adplug.github.io/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	binio c m ${COMPILER_LIBCXX}

MASTER_SITES =	https://github.com/adplug/adplug/releases/download/adplug-${V}/

EXTRACT_SUFX =	.tar.bz2

LIB_DEPENDS =	devel/libbinio

CXXFLAGS +=	-I${LOCALBASE}/include/libbinio

CONFIGURE_STYLE = gnu

post-install:
	@sed -i 's|<binio.h>|<libbinio/binio.h>|' \
	${PREFIX}/include/adplug/database.h ${PREFIX}/include/adplug/fprovide.h

.include <bsd.port.mk>
