V =		3.0.4
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
WANTLIB += m png pthread tiff webp z

MASTER_SITES =	https://gitlab.com/azelpg/azpainter/-/archive/v${V}/

# C11
COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c

LIB_DEPENDS =	converters/libiconv \
		graphics/jpeg \
		graphics/libwebp \
		graphics/png

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

# CONFIGURE_ARGS is not a typo.
# The configure script is broken.
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	CC="${CC}"

CFLAGS +=	-std=gnu11

USE_GMAKE =	Yes

NO_TEST =	Yes

do-gen:
	sed -i "s,%LOCALBASE%,${LOCALBASE},g" ${WRKSRC}/src/main.c

.include <bsd.port.mk>
