# $OpenBSD: Makefile,v 1.8 2007/05/30 09:56:30 jasper Exp $

COMMENT=	"collection of documentation utilities for the GNOME project"

DISTNAME=	gnome-doc-utils-0.10.3
PKGNAME=	${DISTNAME}p1
CATEGORIES=	x11/gnome textproc

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
		:libxslt-*:textproc/libxslt
RUN_DEPENDS=	:py-libxml-*:textproc/libxml,-python \
		:libxslt-*:textproc/libxslt \
		:scrollkeeper-*:textproc/scrollkeeper

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-scrollkeeper
CONFIGURE_ENV=	PYTHON=${MODPY_BIN} \
		CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py ${PREFIX}/share/xml2po

.include <bsd.port.mk>
