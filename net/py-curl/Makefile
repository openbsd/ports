# $OpenBSD: Makefile,v 1.42 2017/12/30 08:52:07 ajacoutot Exp $

COMMENT=	Python interface to cURL library

MODPY_EGG_VERSION=	7.43.0.1
DISTNAME=	pycurl-${MODPY_EGG_VERSION}
PKGNAME=	py-curl-${MODPY_EGG_VERSION}
CATEGORIES=	net

HOMEPAGE=	http://pycurl.sourceforge.net/

# dual: LGPL or MIT-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += crypto curl nghttp2 pthread ssl z

MODULES=	lang/python

MODPY_PI=	Yes

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
