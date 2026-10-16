COMMENT =		asynchronous networking Python framework

MODPY_DISTV =		26.4.0

DISTNAME =		twisted-${MODPY_DISTV}
PKGNAME =		py-twisted-${MODPY_DISTV}

CATEGORIES =		devel

HOMEPAGE =		https://twistedmatrix.com/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODPY_WANTLIB}
WANTLIB +=		pthread

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

BUILD_DEPENDS =		devel/py-hatch-fancy-pypi-readme \
			devel/py-incremental

# required
RUN_DEPENDS =		devel/py-zopeinterface \
			devel/py-constantly \
			devel/py-incremental \
			devel/py-automat \
			www/py-hyperlink \
			devel/py-attrs \
			devel/py-typing-extensions

# tls
RUN_DEPENDS +=		security/py-openssl \
			security/py-service_identity \
			net/py-idna

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH} \
			devel/py-gobject3 \
			devel/py-hypothesis \
			devel/py-constantly \
			devel/py-hamcrest \
			security/py-cryptography \
			devel/py-appdirs \
			security/py-bcrypt
TEST_ENV =		LC_ALL=en_US.UTF-8
TESTDIR =		${WRKSRC}/regress

# gireactor test crashes the test runner with PORTS_PRIVSEP
do-test:
	mkdir -p ${TESTDIR}
	cd ${TESTDIR}; ${LOCALBASE}/bin/trial -j ${MAKE_JOBS} \
	    --without-module=twisted.internet.test.test_gireactor \
	    twisted

.include <bsd.port.mk>
