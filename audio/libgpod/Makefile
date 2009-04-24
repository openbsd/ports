# $OpenBSD: Makefile,v 1.16 2009/04/24 09:45:48 jasper Exp $

COMMENT-main=	library to access the contents of an iPod
COMMENT-python= python bindings for libgpod

VERSION=	0.7.0
DISTNAME=	libgpod-${VERSION}
PKGNAME-main=	${DISTNAME}p0
PKGNAME-python= py-gpod-${VERSION}
SHARED_LIBS=	gpod	700.0
CATEGORIES=	audio
MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=gtkpod/}

HOMEPAGE=	http://www.gtkpod.org/libgpod.html

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

BUILD_DEPENDS=		::audio/py-mutagen \
			::devel/swig
RUN_DEPENDS-python=	::audio/py-mutagen
LIB_DEPENDS-python=	${LIB_DEPENDS} \
			gpod::${BUILD_PKGPATH},-main
LIB_DEPENDS=		gio-2.0,glib-2.0,gmodule-2.0,gobject-2.0::devel/glib2 \
			gdk_pixbuf-2.0::x11/gtk+2 \
			xml2.>=9::textproc/libxml
WANTLIB=		m z pcre

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-hal \
		--with-python="${MODPY_BIN}"
CONFIGURE_ENV+= CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		CXXFLAGS="${CXXFLAGS} -ftrampolines" \
		CFLAGS="${CFLAGS} -ftrampolines"

pre-configure:
	@find ${WRKDIST} -name \*.py | \
		xargs perl -pi -e 's,/usr/bin/python,${MODPY_BIN},g'

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-gpod
	${INSTALL_DATA} ${WRKSRC}/bindings/python/examples/*.py \
		${PREFIX}/share/examples/py-gpod

.include <bsd.port.mk>
