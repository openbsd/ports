# $OpenBSD: Makefile,v 1.12 2017/05/12 07:58:48 shadchin Exp $

COMMENT =	wsgi request and response object

MODPY_EGG_VERSION = 1.7.2
DISTNAME =	WebOb-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =	www devel

HOMEPAGE =	http://webob.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =	devel/py-nose${MODPY_FLAVOR} \
		www/py-webtest

FLAVORS=	python3
FLAVOR?=

.if ${FLAVOR:Mpython3}
NO_TEST=	Yes
.endif

DOCS =		differences.txt do-it-yourself.txt index.txt whatsnew-*.txt \
		reference.txt
EXAMPLES =	comment-example.txt file-example.txt jsonrpc-example.txt \
		wiki-example.txt

post-extract:
	find ${WRKSRC} -perm 0666 -exec chmod 0644 {} \;

PYPKGNAME =	${MODPY_PY_PREFIX}webob

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${PYPKGNAME}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${PYPKGNAME}
	cd ${WRKSRC}/docs && ${INSTALL_DATA} ${DOCS} \
	    ${PREFIX}/share/doc/${PYPKGNAME}
	cd ${WRKSRC}/docs && ${INSTALL_DATA} ${EXAMPLES} \
	    ${PREFIX}/share/examples/${PYPKGNAME}

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests lib tests

.include <bsd.port.mk>
