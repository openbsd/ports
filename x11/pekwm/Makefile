# $OpenBSD: Makefile,v 1.37 2021/08/26 04:23:03 semarie Exp $

COMMENT=	aewm++ based pretty themable window manager

DISTNAME=	pekwm-${V}
V=		0.1.18
CATEGORIES=	x11

HOMEPAGE=	https://www.pekwm.se/

MAINTAINER=	Timo Myyra <timo.myyra@bittivirhe.fi>

# GPLv2
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB += ICE SM X11 Xext Xft Xinerama Xpm Xrandr c iconv jpeg m png z
WANTLIB += ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	https://github.com/pekdon/pekwm/releases/download/release-${V}/
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
