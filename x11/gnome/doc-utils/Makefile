# $OpenBSD: Makefile,v 1.16 2008/12/17 18:47:57 jasper Exp $

COMMENT=	collection of documentation utilities for the GNOME project

GNOME_PROJECT=	gnome-doc-utils
GNOME_VERSION=	0.10.3
PKGNAME=	${DISTNAME}p7
CATEGORIES=	textproc

# (L)GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/python \
		x11/gnome

BUILD_DEPENDS=	:py-libxml-*:textproc/libxml,-python \
		:libxslt-*:textproc/libxslt \
		:docbook-*:textproc/docbook
RUN_DEPENDS=	:py-libxml-*:textproc/libxml,-python \
		:libxslt-*:textproc/libxslt \
		::textproc/rarian

USE_LIBTOOL=	No
CONFIGURE_ARGS=	--disable-scrollkeeper
CONFIGURE_ENV=	PYTHON=${MODPY_BIN} \
		CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}/share/xml2po

.include <bsd.port.mk>
