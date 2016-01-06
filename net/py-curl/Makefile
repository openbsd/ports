# $OpenBSD: Makefile,v 1.37 2016/01/06 10:49:28 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	Python interface to cURL library

MODPY_EGG_VERSION=	7.21.5
DISTNAME=	pycurl-${MODPY_EGG_VERSION}
PKGNAME=	py-curl-${MODPY_EGG_VERSION}
CATEGORIES=    	net

HOMEPAGE=	http://pycurl.sourceforge.net/

# dual: LGPL or MIT-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB} crypto curl idn nghttp2 pthread ssl z

MASTER_SITES=	${HOMEPAGE}download/ \
		${HOMEPAGE}download/00-OLD-VERSIONS/

MODULES=	lang/python
FLAVORS=	python3
FLAVOR?=

LIB_DEPENDS=	net/curl

SUBST_VARS+=	MODPY_PY_PREFIX

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/setup.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	mv ${PREFIX}/share/doc/${MODPY_PY_PREFIX}curl/examples \
		${PREFIX}/share/examples/${MODPY_PY_PREFIX}curl/

# tests need more work; some need Bottle and Flaky which are not ported yet
TEST_DEPENDS=	${BUILD_PKGPATH} \
		devel/py-nose${MODPY_FLAVOR}

do-test:
	@cd ${WRKSRC}/tests && nosetests${MODPY_BIN_SUFFIX} -a \!standalone
	@cd ${WRKSRC}/tests && nosetests${MODPY_BIN_SUFFIX} -a standalone

.include <bsd.port.mk>
