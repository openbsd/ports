# $OpenBSD: Makefile,v 1.29 2011/11/15 15:47:52 mpi Exp $

COMMENT-main=	library to access the contents of an iPod
COMMENT-python= python bindings for libgpod

VERSION=	0.8.0
DISTNAME=	libgpod-${VERSION}
PKGNAME-main=	${DISTNAME}
PKGNAME-python= py-gpod-${VERSION}
SHARED_LIBS=	gpod	721.0	# 7.1
CATEGORIES=	audio
MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=gtkpod/}

HOMEPAGE=	http://www.gtkpod.org/libgpod/

MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES= -main -python

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes

MODULES=	devel/gettext \
		lang/python \
		textproc/intltool

BUILD_DEPENDS=		audio/py-mutagen \
			devel/swig
RUN_DEPENDS-python=	audio/py-mutagen
LIB_DEPENDS-python=	${LIB_DEPENDS} \
			devel/libffi \
			${BUILD_PKGPATH},-main
LIB_DEPENDS=		databases/sqlite3 \
			devel/glib2 \
			devel/libplist \
			devel/py-gobject \
			graphics/gdk-pixbuf2 \
			textproc/libxml

WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 m z pcre
WANTLIB += gdk_pixbuf-2.0 xml2 png ffi sqlite3 plist
WANTLIB-main += ${WANTLIB} c pthread
WANTLIB-python += ${WANTLIB} gpod

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-gdk-pixbuf \
		--enable-pygobject \
		--without-hal \
		--without-libimobiledevice \
		--without-mono \
		--with-python="${MODPY_BIN}" \
		--localedir=${TRUEPREFIX}/share/locale

pre-configure:
	@find ${WRKDIST} -name \*.py | \
		xargs perl -pi -e 's,/usr/bin/python,${MODPY_BIN},g'

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-gpod
	${INSTALL_DATA} ${WRKSRC}/bindings/python/examples/*.py \
		${PREFIX}/share/examples/py-gpod

.include <bsd.port.mk>
