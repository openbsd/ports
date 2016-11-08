# $OpenBSD: Makefile,v 1.1.1.1 2016/11/08 23:22:32 fcambus Exp $

COMMENT =	AdLib sound player library

DISTNAME =	adplug-2.2.1
SHARED_LIBS +=	adplug	0.0	# 2.2
CATEGORIES =	audio

HOMEPAGE =	http://adplug.github.io/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	binio c m stdc++

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=adplug/}

LIB_DEPENDS =	devel/libbinio

CXXFLAGS +=	-I${LOCALBASE}/include/libbinio

CONFIGURE_STYLE = gnu

post-install:
	@sed -i 's|<binio.h>|<libbinio/binio.h>|' \
	${PREFIX}/include/adplug/database.h ${PREFIX}/include/adplug/fprovide.h

.include <bsd.port.mk>
