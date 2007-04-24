# $OpenBSD: Makefile,v 1.6 2007/04/24 20:49:04 jasper Exp $

COMMENT=	"collection of documentation utilities for the GNOME project"

DISTNAME=	gnome-doc-utils-0.10.3
CATEGORIES=	x11/gnome textproc

HOMEPAGE=	http://www.gnome.org

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gnome-doc-utils/0.10/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	lang/python
BUILD_DEPENDS=	:p5-XML-Parser-*:textproc/p5-XML-Parser \
		:py-libxml-*:textproc/libxml,-python \
		:libxslt-*:textproc/libxslt \
		:gawk-*:lang/gawk
RUN_DEPENDS=	:py-libxml-*:textproc/libxml,-python \
		:libxslt-*:textproc/libxslt \
		:scrollkeeper-*:textproc/scrollkeeper

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-scrollkeeper
CONFIGURE_ENV=	PYTHON=${MODPY_BIN} \
		CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
MAKE_FLAGS=	AWK=${LOCALBASE}/bin/gawk

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}/share/xml2po

.include <bsd.port.mk>
