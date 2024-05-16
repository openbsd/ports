COMMENT=	Python interface to cURL library

MODPY_EGG_VERSION=	7.45.3
DISTNAME=	pycurl-${MODPY_EGG_VERSION}
PKGNAME=	py-curl-${MODPY_EGG_VERSION}
CATEGORIES=	net

HOMEPAGE=	http://pycurl.io/

# dual: LGPL or MIT-like
PERMIT_PACKAGE=	Yes

WANTLIB += crypto curl ssl

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

LIB_DEPENDS=	net/curl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	mv ${PREFIX}/share/doc/pycurl/examples \
		${PREFIX}/share/examples/py-curl/
	mv ${PREFIX}/share/doc/pycurl ${PREFIX}/share/doc/py-curl/

TEST_DEPENDS=	${BUILD_PKGPATH} \
		devel/py-flaky${MODPY_FLAVOR} \
		www/py-bottle${MODPY_FLAVOR}

.include <bsd.port.mk>
