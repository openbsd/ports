# $OpenBSD: Makefile,v 1.8 2013/03/11 11:44:48 espie Exp $

COMMENT =	wsgi request and response object

MODPY_EGG_VERSION = 1.1.1
DISTNAME =	WebOb-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =	www devel

HOMEPAGE =	http://webob.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=W/WebOb/}
EXTRACT_SUFX =	.zip

MODULES =	lang/python

TEST_DEPENDS =	devel/py-nose \
			www/py-webtest

MODPY_SETUPTOOLS =	Yes

DOCS =		differences.txt do-it-yourself.txt index.txt news.txt \
		reference.txt
EXAMPLES =	comment-example.txt file-example.txt jsonrpc-example.txt \
		wiki-example.txt

post-extract:
	find ${WRKSRC} -perm 0666 -exec chmod 0644 {} \;

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-webob
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-webob
	cd ${WRKSRC}/docs && ${INSTALL_DATA} ${DOCS} \
	    ${PREFIX}/share/doc/py-webob
	cd ${WRKSRC}/docs && ${INSTALL_DATA} ${EXAMPLES} \
	    ${PREFIX}/share/examples/py-webob

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests lib tests

.include <bsd.port.mk>
