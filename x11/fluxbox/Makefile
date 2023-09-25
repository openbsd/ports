COMMENT =	window manager based on the original Blackbox code
DISTNAME =	fluxbox-1.3.7
CATEGORIES =	x11
REVISION =	6

HOMEPAGE =	http://fluxbox.org/

SITES.p =         http://git.fluxbox.org/fluxbox.git/patch/
# Backport fix for maxDepth to fix usage with Firefox
PATCHFILES.p =            fluxbox-firefox-fix.patch{?id=dcdde4d32c93d01df205bc06d7dfcbd356be031f}
PATCH_DIST_STRIP =      -p1

# X11
PERMIT_PACKAGE =	Yes

WANTLIB += Imlib2 X11 Xext Xft Xinerama Xpm Xrandr Xrender c fontconfig
WANTLIB += freetype fribidi iconv m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

SITES =		${SITE_SOURCEFORGE:=fluxbox/}

LIB_DEPENDS=	converters/libiconv \
		devel/fribidi \
		graphics/imlib2

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE =	Yes

NO_TEST =	Yes

.include <bsd.port.mk>
