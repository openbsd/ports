# $OpenBSD: Makefile,v 1.38 2014/03/24 12:55:43 ajacoutot Exp $

COMMENT-main=	library to access the contents of an iPod
COMMENT-python= python bindings for libgpod

VERSION=	0.8.0
DISTNAME=	libgpod-${VERSION}
PKGNAME-main=	${DISTNAME}
PKGNAME-python= py-gpod-${VERSION}
SHARED_LIBS=	gpod	721.0	# 7.1
CATEGORIES=	audio
MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=gtkpod/}

REVISION-main=	4
REVISION-python=3

HOMEPAGE=	http://www.gtkpod.org/libgpod/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MULTI_PACKAGES= -main -python

USE_GMAKE=	Yes

MODULES=	devel/gettext \
		lang/python \
		textproc/intltool

BUILD_DEPENDS=		audio/py-mutagen \
			devel/py-gobject \
			devel/swig
RUN_DEPENDS-python=	audio/py-mutagen \
			devel/py-gobject
LIB_DEPENDS-python=	${BUILD_PKGPATH},-main
LIB_DEPENDS=		devel/glib2 \
			devel/libplist \
			graphics/gdk-pixbuf2 \
			textproc/libxml \
			devel/libusb1

WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 m z pcre
WANTLIB += gdk_pixbuf-2.0 xml2 png ffi sqlite3 plist
WANTLIB-main += ${WANTLIB} c pthread usb-1.0
WANTLIB-python += ${WANTLIB} gpod

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-gdk-pixbuf \
		--enable-pygobject \
		--disable-gtk-doc \
		--without-hal \
		--without-libimobiledevice \
		--without-mono \
		--with-python="${MODPY_BIN}" \
		--localedir=${TRUEPREFIX}/share/locale

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=	ac_cv_path_GTKDOC_CHECK="" \
			ac_cv_path_GTKDOC_REBASE="" \
			ac_cv_path_GTKDOC_MKPDF=""

pre-configure:
	@find ${WRKDIST} -name \*.py | \
		xargs perl -pi -e 's,/usr/bin/python,${MODPY_BIN},g'

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-gpod
	${INSTALL_DATA} ${WRKSRC}/bindings/python/examples/*.py \
		${PREFIX}/share/examples/py-gpod

.include <bsd.port.mk>
