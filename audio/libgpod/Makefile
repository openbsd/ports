# $OpenBSD: Makefile,v 1.52 2020/03/20 16:44:21 naddy Exp $

COMMENT-main=	library to access the contents of an iPod
COMMENT-python= python bindings for libgpod

VERSION=	0.8.0
DISTNAME=	libgpod-${VERSION}
PKGNAME-main=	${DISTNAME}
PKGNAME-python= py-gpod-${VERSION}
SHARED_LIBS=	gpod	721.0	# 7.1
CATEGORIES=	audio
MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=gtkpod/}

REVISION-main=	10
REVISION-python= 9

HOMEPAGE=	http://www.gtkpod.org/libgpod/

# LGPLv2
PERMIT_PACKAGE=	Yes

MULTI_PACKAGES= -main -python

USE_GMAKE=	Yes

MODULES=	lang/python \
		textproc/intltool

BUILD_DEPENDS=		${RUN_DEPENDS-python} \
			devel/swig
RUN_DEPENDS-python=	audio/py-mutagen \
			devel/py-gobject
LIB_DEPENDS-python=	${BUILD_PKGPATH},-main
LIB_DEPENDS=		databases/sqlite3 \
			devel/gettext,-runtime \
			devel/glib2 \
			devel/libplist \
			graphics/gdk-pixbuf2 \
			textproc/libxml \
			devel/libusb1

WANTLIB += ffi gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += iconv intl lzma m pcre plist png sqlite3 xml2 z
WANTLIB-main += ${WANTLIB} c pthread usb-1.0
WANTLIB-python += ${WANTLIB} gpod pthread

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-gdk-pixbuf \
		--enable-pygobject \
		--without-hal \
		--without-libimobiledevice \
		--without-mono \
		--with-python="${MODPY_BIN}" \
		--localedir=${TRUEPREFIX}/share/locale

pre-configure:
	@find ${WRKDIST} -name \*.py \
		-exec sed -i 's,/usr/bin/python,${MODPY_BIN},g' {} +

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-gpod
	${INSTALL_DATA} ${WRKSRC}/bindings/python/examples/*.py \
		${PREFIX}/share/examples/py-gpod

.include <bsd.port.mk>
