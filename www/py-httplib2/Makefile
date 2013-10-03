# $OpenBSD: Makefile,v 1.13 2013/10/03 16:37:18 dcoppa Exp $

COMMENT =		Python HTTP client library

MODPY_EGG_VERSION =	0.7.7
REVISION = 		1
DISTNAME =		httplib2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www net

HOMEPAGE =		https://code.google.com/p/httplib2/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://httplib2.googlecode.com/files/

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

pre-patch:
	@perl -pi -e 's|\r\n|\n|g' ${WRKDIST}/python3/httplib2test.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}httplib2
	${INSTALL_DATA} ${WRKSRC}/README \
	    ${PREFIX}/share/doc/${MODPY_PY_PREFIX}httplib2
	ln -sf /etc/ssl/cert.pem \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/httplib2/cacerts.txt

do-test:
	${MODPY_BIN} ${WRKSRC}/python${MODPY_MAJOR_VERSION}/httplib2test.py

.include <bsd.port.mk>
