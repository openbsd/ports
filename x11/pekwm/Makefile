# $OpenBSD: Makefile,v 1.30 2017/07/16 19:19:05 espie Exp $

COMMENT=	aewm++ based pretty themable window manager

DISTNAME=	pekwm-0.1.17
CATEGORIES=	x11

HOMEPAGE=	https://www.pekwm.org/

MAINTAINER=	Timo Myyra <timo.myyra@wickedbsd.net>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xext Xft Xinerama Xpm Xrandr c iconv jpeg m png
WANTLIB += ${COMPILER_LIBCXX}

MASTER_SITES=	${HOMEPAGE}/files/
EXTRACT_SUFX=	.tar.bz2
LIB_DEPENDS=	converters/libiconv \
		graphics/jpeg \
		graphics/png

NO_TEST=	Yes

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--enable-xinerama

post-install:
	@mv ${WRKINST}/etc/pekwm ${PREFIX}/share/examples

.include <bsd.port.mk>
