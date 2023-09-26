V =		3.0.6
COMMENT =	full color painting software for illustrations
DISTNAME =	azpainter-v${V}
PKGNAME =	azpainter-${V}
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	graphics multimedia x11

HOMEPAGE =	http://azsky2.html.xdomain.jp/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xcursor Xext Xi c fontconfig freetype iconv jpeg
WANTLIB += m png pthread sharpyuv tiff webp z

SITES =		https://gitlab.com/azelpg/azpainter/-/archive/v${V}/

# C11
COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c

# Uses ninja as of 3.0.6, see build and install targets
BUILD_DEPENDS =	devel/ninja

LIB_DEPENDS =	converters/libiconv \
		graphics/jpeg \
		graphics/libwebp \
		graphics/png

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+4,-guic

# CONFIGURE_ARGS is not a typo.
# The configure script is broken.
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	CC="${CC}" CFLAGS="${CFLAGS}"

CFLAGS +=	-std=gnu11

NO_TEST =	Yes

do-gen:
	sed -i "s,%LOCALBASE%,${LOCALBASE},g" ${WRKSRC}/src/main.c

do-build:
	${SETENV} ${MAKE_ENV} ninja -C ${WRKSRC}/build -v -j ${MAKE_JOBS}

do-install:
	ninja -C ${WRKSRC}/build install

.include <bsd.port.mk>
