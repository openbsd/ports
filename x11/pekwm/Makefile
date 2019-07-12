# $OpenBSD: Makefile,v 1.36 2019/07/12 20:51:19 sthen Exp $

COMMENT=	aewm++ based pretty themable window manager

DISTNAME=	pekwm-0.1.17
REVISION=	4
CATEGORIES=	x11

HOMEPAGE=	https://www.pekwm.org/

MAINTAINER=	Timo Myyra <timo.myyra@bittivirhe.fi>

# GPLv2
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB += ICE SM X11 Xext Xft Xinerama Xpm Xrandr c iconv jpeg m png z
WANTLIB += ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	${HOMEPAGE}/files/
EXTRACT_SUFX=	.tar.bz2
LIB_DEPENDS=	converters/libiconv \
		graphics/jpeg \
		graphics/png

NO_TEST=	Yes

USE_GMAKE=	Yes

CONFIGURE_STYLE=autoconf
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--enable-xinerama

AUTOCONF_VERSION=	2.69

post-install:
	@mv ${WRKINST}/etc/pekwm ${PREFIX}/share/examples

.include <bsd.port.mk>
