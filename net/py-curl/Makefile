COMMENT=	Python interface to cURL library

MODPY_DISTV=	7.45.7
DISTNAME=	pycurl-${MODPY_DISTV}
PKGNAME=	py-curl-${MODPY_DISTV}
CATEGORIES=	net

HOMEPAGE=	http://pycurl.io/

# dual: LGPL or MIT-like
PERMIT_PACKAGE=	Yes

WANTLIB += crypto curl ssl

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

LIB_DEPENDS=	net/curl

TEST_DEPENDS=	${BUILD_PKGPATH} \
		devel/py-flaky \
		www/py-bottle \
		www/py-flask

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	mv ${PREFIX}/share/doc/pycurl/examples \
		${PREFIX}/share/examples/py-curl/
	mv ${PREFIX}/share/doc/pycurl ${PREFIX}/share/doc/py-curl/

.include <bsd.port.mk>
