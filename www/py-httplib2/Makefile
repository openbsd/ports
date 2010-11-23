# $OpenBSD: Makefile,v 1.5 2010/11/23 15:08:16 fgsch Exp $

COMMENT =		Python HTTP client library

MODPY_EGG_VERSION =	0.6.0
DISTNAME =		httplib2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www net

HOMEPAGE =		http://code.google.com/p/httplib2/

MAINTAINER =		Benoit Chesneau <benoitc@metavers.net>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://httplib2.googlecode.com/files/

MODULES =		lang/python

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-httplib2
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-httplib2

do-regress:
	${MODPY_BIN} ${WRKSRC}/lib/httplib2/iri2uri.py

.include <bsd.port.mk>
