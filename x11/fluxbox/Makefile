# $OpenBSD: Makefile,v 1.88 2019/07/12 20:51:11 sthen Exp $

COMMENT =	window manager based on the original Blackbox code
DISTNAME =	fluxbox-1.3.7
CATEGORIES =	x11
REVISION =	4

HOMEPAGE =	http://fluxbox.org/

# X11
PERMIT_PACKAGE =	Yes

WANTLIB += Imlib2 X11 Xext Xft Xinerama Xpm Xrandr Xrender c fontconfig
WANTLIB += freetype fribidi iconv m ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=fluxbox/}

LIB_DEPENDS=	converters/libiconv \
		devel/fribidi \
		graphics/imlib2

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE =	Yes

NO_TEST =	Yes

.include <bsd.port.mk>
