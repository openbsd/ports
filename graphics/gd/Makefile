# $OpenBSD: Makefile,v 1.33 2002/02/03 19:45:46 brad Exp $
# $FreeBSD: Makefile,v 1.5 1998/06/25 03:13:16 vanilla Exp $

COMMENT=	"graphics library for fast PNG creation"

DISTNAME=	gd-1.8.3
CATEGORIES=	graphics
NEED_VERSION=	1.500
MASTER_SITES=	http://www.boutell.com/gd/http/ \
		ftp://ftp.boutell.com/pub/boutell/gd/

HOMEPAGE=	http://www.boutell.com/gd/

LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		png.2::graphics/png \
		ttf.1.3::print/freetype

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	COMPILER="${CC}" prefix="${PREFIX}"
FAKE_FLAGS=	${MAKE_FLAGS} DESTDIR="${WRKINST}"

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:L} == "no_x11"
MAKE_FLAGS+=	CFLAGS="${CFLAGS} -DHAVE_JPEG -DHAVE_LIBTTF" \
		INCLUDEDIRS="-I. -I${LOCALBASE}/include -I${LOCALBASE}/include/freetype" \
		LIBS="-lgd -lm -lpng -lz -ljpeg -lttf" \
		LIBDIRS="-L. -L${LOCALBASE}/lib"
.else
USE_X11=	Yes
MAKE_FLAGS+=	CFLAGS="${CFLAGS} -DHAVE_XPM -DHAVE_JPEG -DHAVE_LIBTTF" \
		INCLUDEDIRS="-I. -I${LOCALBASE}/include -I${LOCALBASE}/include/freetype \
			-I${X11BASE}/include -I${X11BASE}/include/X11" \
		LIBS="-lgd -lm -lpng -lz -ljpeg -lttf -lXpm -lX11" \
		LIBDIRS="-L. -L${LOCALBASE}/lib -L${X11BASE}/lib"
.endif

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gd
	${INSTALL_DATA} ${WRKSRC}/demoin.png ${PREFIX}/share/examples/gd
	${INSTALL_DATA} ${WRKSRC}/demoout.png ${PREFIX}/share/examples/gd
	${INSTALL_DATA} ${WRKSRC}/index.html ${PREFIX}/share/examples/gd

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
MAKE_ENV+=	NO_SHARED_LIBS=Yes
.endif
