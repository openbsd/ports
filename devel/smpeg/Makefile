# $OpenBSD: Makefile,v 1.45 2016/03/11 20:28:25 naddy Exp $

COMMENT=	MPEG video player library with sound support

DISTNAME=	smpeg-0.4.4
REVISION=	14
CATEGORIES=	devel graphics
MASTER_SITES=	https://distfiles.nl/

SHARED_LIBS=	smpeg	2.0

HOMEPAGE=	http://icculus.org/smpeg/

MAINTAINER=	Peter Valchev <pvalchev@sightly.net>

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=	SDL c m pthread sndio stdc++ usbhid

MODULES=	converters/libiconv
LIB_DEPENDS=	devel/sdl

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --disable-opengl-player \
		 --disable-gtk-player
CONFIGURE_ENV+=  LDFLAGS="-L${X11BASE}/lib"

post-install:
	${INSTALL_MAN} ${FILESDIR}/smpeg.3 ${PREFIX}/man/man3

.include <bsd.port.mk>
