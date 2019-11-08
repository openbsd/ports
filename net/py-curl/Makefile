# $OpenBSD: Makefile,v 1.46 2019/11/08 21:57:29 kmos Exp $

COMMENT=	Python interface to cURL library

MODPY_EGG_VERSION=	7.43.0.2
DISTNAME=	pycurl-${MODPY_EGG_VERSION}
PKGNAME=	py-curl-${MODPY_EGG_VERSION}
CATEGORIES=	net
REVISION=	0

HOMEPAGE=	http://pycurl.sourceforge.net/

# dual: LGPL or MIT-like
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += crypto curl nghttp2 pthread ssl z

MODULES=	lang/python

MODPY_PI=	Yes

FLAVORS=	python3
FLAVOR?=

LIB_DEPENDS=	net/curl

SUBST_VARS+=	MODPY_PY_PREFIX

MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	tests

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/setup.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	mv ${PREFIX}/share/doc/${MODPY_PY_PREFIX}curl/examples \
		${PREFIX}/share/examples/${MODPY_PY_PREFIX}curl/

TEST_DEPENDS=	${BUILD_PKGPATH} \
		devel/py-flaky${MODPY_FLAVOR} \
		devel/py-nose${MODPY_FLAVOR} \
		www/py-bottle${MODPY_FLAVOR}

.include <bsd.port.mk>
