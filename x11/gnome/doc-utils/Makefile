# $OpenBSD: Makefile,v 1.2 2006/06/19 05:06:11 sturm Exp $

COMMENT=	"collection of documentation utilities for the GNOME project"

DISTNAME=	gnome-doc-utils-0.6.0
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11/gnome textproc

HOMEPAGE=	http://www.gnome.org

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gnome-doc-utils/0.6/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	lang/python
BUILD_DEPENDS=	:p5-XML-Parser-*:textproc/p5-XML-Parser \
		:pkgconfig-*:devel/pkgconfig \
		:py-libxml-*:textproc/libxml,python,-python \
		:libxslt-*:textproc/libxslt
RUN_DEPENDS=	:py-libxml-*:textproc/libxml,python,-python \
		:libxslt-*:textproc/libxslt

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	PYTHON=${MODPY_BIN}

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}/share/xml2po

.include <bsd.port.mk>
