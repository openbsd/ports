# $OpenBSD: Makefile,v 1.33 2017/09/25 21:25:19 sthen Exp $

COMMENT=	aewm++ based pretty themable window manager

DISTNAME=	pekwm-0.1.17
REVISION=	2
CATEGORIES=	x11

HOMEPAGE=	https://www.pekwm.org/

MAINTAINER=	Timo Myyra <timo.myyra@wickedbsd.net>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xext Xft Xinerama Xpm Xrandr c iconv jpeg m png z
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
