# $OpenBSD: Makefile,v 1.11 2020/05/14 12:19:48 fcambus Exp $

COMMENT =	AdLib sound player library

V =		2.3.2
DISTNAME =	adplug-${V}
SHARED_LIBS +=	adplug	2.0

CATEGORIES =	audio

HOMEPAGE =	https://adplug.github.io/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB +=	binio c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	https://github.com/adplug/adplug/releases/download/adplug-${V}/

EXTRACT_SUFX =	.tar.bz2

LIB_DEPENDS =	devel/libbinio

CXXFLAGS +=	-I${LOCALBASE}/include/libbinio

CONFIGURE_STYLE = gnu

post-install:
	@sed -i 's|<binio.h>|<libbinio/binio.h>|' \
	${PREFIX}/include/adplug/database.h ${PREFIX}/include/adplug/fprovide.h

.include <bsd.port.mk>
