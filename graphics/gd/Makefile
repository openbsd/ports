# $OpenBSD: Makefile,v 1.24 2000/07/20 07:43:20 brad Exp $
# $FreeBSD: Makefile,v 1.5 1998/06/25 03:13:16 vanilla Exp $

DISTNAME=	gd-1.8.3
CATEGORIES=	graphics
NEED_VERSION=	1.310
MASTER_SITES=	http://www.boutell.com/gd/http/ \
		ftp://ftp.boutell.com/pub/boutell/gd/

HOMEPAGE=	http://www.boutell.com/gd/

LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		png.1::graphics/png

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=	Yes
MAKE_FLAGS=	COMPILER="${CC}" prefix="${PREFIX}"
FAKE_FLAGS=	DESTDIR="${WRKINST}"

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:L} == "no_x11"
MAKE_FLAGS+=	CFLAGS="${CFLAGS} -DHAVE_JPEG" \
		LIBS="libgd.la -lm -lpng -ljpeg -lz" \
		INCLUDEDIRS="-I. -I/usr/local/include" \
		LIBDIRS="-L/usr/local/lib"
FAKE_FLAGS+=	${MAKE_FLAGS}
.else
LIB_DEPENDS+=	ttf.1.3::print/freetype
MAKE_FLAGS+=	CFLAGS="${CFLAGS} -DHAVE_XPM -DHAVE_JPEG -DHAVE_LIBTTF" \
		LIBS="libgd.la -lm -lpng -lz -ljpeg -lttf -lXpm -lX11" \
		INCLUDEDIRS="-I. -I/usr/local/include -I/usr/X11R6/include -I/usr/X11R6/include/X11" \
		LIBDIRS="-L/usr/local/lib -L/usr/X11R6/lib"
FAKE_FLAGS+=	${MAKE_FLAGS}
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gd
	${INSTALL_DATA} ${WRKSRC}/demoin.png ${PREFIX}/share/examples/gd
	${INSTALL_DATA} ${WRKSRC}/demoout.png ${PREFIX}/share/examples/gd
	${INSTALL_DATA} ${WRKSRC}/index.html ${PREFIX}/share/examples/gd

.include <bsd.port.mk>
