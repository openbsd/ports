# $OpenBSD: Makefile,v 1.57 2015/10/06 22:43:50 sthen Exp $

COMMENT=	graphics and text browser
VER=		2.12
DISTNAME=	links-${VER}
PKGNAME=	links+-${VER}
CATEGORIES=	www

HOMEPAGE=	http://links.twibright.com/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	bz2 c crypto lzma pthread ssl z

MASTER_SITES=	http://links.twibright.com/download/

LIB_DEPENDS=	archivers/bzip2 \
		archivers/xz

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-ssl

FLAVORS=	no_x11
FLAVOR?=

.if !${FLAVOR:Mno_x11}
MODULES+=	devel/gettext
LIB_DEPENDS+=	graphics/jpeg \
		graphics/png \
		x11/gnome/librsvg \
		graphics/tiff
CONFIGURE_ARGS+= --with-x --enable-graphics
WANTLIB+=	X11 jpeg>=62 m png>=2 tiff>=35
WANTLIB +=	cairo event gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB +=	rsvg-2

MESSAGE=	${PKGDIR}/MESSAGE.x11
.endif

MAKE_FLAGS=	CFLAGS="${CFLAGS} -DEVENT_DEPRECATED"
NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/links+
	${INSTALL_DATA} ${WRKSRC}/doc/links_cal/* ${PREFIX}/share/links+

.include <bsd.port.mk>
