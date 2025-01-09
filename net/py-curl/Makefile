COMMENT=	Python interface to cURL library

MODPY_DISTV=	7.45.4
DISTNAME=	pycurl-${MODPY_DISTV}
PKGNAME=	py-curl-${MODPY_DISTV}
CATEGORIES=	net

HOMEPAGE=	http://pycurl.io/

# dual: LGPL or MIT-like
PERMIT_PACKAGE=	Yes

WANTLIB += crypto curl ssl

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

LIB_DEPENDS=	net/curl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	mv ${PREFIX}/share/doc/pycurl/examples \
		${PREFIX}/share/examples/py-curl/
	mv ${PREFIX}/share/doc/pycurl ${PREFIX}/share/doc/py-curl/

TEST_DEPENDS=	${BUILD_PKGPATH} \
		devel/py-flaky \
		www/py-bottle

.include <bsd.port.mk>
