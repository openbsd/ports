# $OpenBSD: Makefile,v 1.9 2012/12/29 18:28:49 fgsch Exp $

COMMENT =		Python HTTP client library

MODPY_EGG_VERSION =	0.7.7
DISTNAME =		httplib2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www net

HOMEPAGE =		http://code.google.com/p/httplib2/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://httplib2.googlecode.com/files/

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

MODPY_BADEGGS =		python${MODPY_MAJOR_VERSION}/httplib2

pre-patch:
	@perl -pi -e 's|\r\n|\n|g' ${WRKDIST}/python3/httplib2test.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}httplib2
	${INSTALL_DATA} ${WRKSRC}/README \
	    ${PREFIX}/share/doc/${MODPY_PY_PREFIX}httplib2

do-regress:
	${MODPY_BIN} ${WRKSRC}/python${MODPY_MAJOR_VERSION}/httplib2test.py

.include <bsd.port.mk>
