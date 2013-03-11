# $OpenBSD: Makefile,v 1.39 2013/03/11 10:50:31 espie Exp $

COMMENT=	MPEG video player library with sound support

DISTNAME=	smpeg-0.4.4
REVISION=	12
CATEGORIES=	devel graphics
MASTER_SITES=	http://mirrors.sunsite.dk/lokigames/open-source/smpeg/

SHARED_LIBS=	smpeg	2.0

HOMEPAGE=	http://icculus.org/smpeg/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=	SDL c m pthread sndio stdc++ usbhid

MODULES=	converters/libiconv
LIB_DEPENDS=	devel/sdl

USE_LIBTOOL=	Yes
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		 --disable-opengl-player \
		 --disable-gtk-player
CONFIGURE_ENV+=  LDFLAGS="-L${X11BASE}/lib"

post-install:
	${INSTALL_MAN} ${FILESDIR}/smpeg.3 ${PREFIX}/man/man3

.include <bsd.port.mk>
