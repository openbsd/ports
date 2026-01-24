COMMENT =		libpcap module for Python

MODPY_DISTV =		1.1.0
DISTNAME =		pcapy_ng-${MODPY_DISTV}
PKGNAME =		py-pcapy-${MODPY_DISTV}
WRKDIST =		${WRKDIR}/pcapy-ng-${MODPY_DISTV}

HOMEPAGE =		https://github.com/stamparm/pcapy-ng/

CATEGORIES =		net devel

# Apache
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODPY_WANTLIB} ${COMPILER_LIBCXX} m pcap

COMPILER =		base-clang ports-gcc

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes

MAKE_ENV +=		LDSHARED="${CC} -shared -fPIC"
MAKE_ENV +=		LDFLAGS="-L${LOCALBASE}/lib"

MODPY_TEST_LINK_SO =	Yes
MODPY_TEST_DIR =	${WRKSRC}/tests
MODPY_PYTEST_ARGS =	pcapytests.py

.include <bsd.port.mk>
