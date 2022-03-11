COMMENT =		asynchronous networking Python framework

MODPY_EGG_VERSION =	20.3.0

EXTRACT_SUFX =		.tar.bz2
DISTNAME =		Twisted-${MODPY_EGG_VERSION}
PKGNAME =		py-twisted-${MODPY_EGG_VERSION}
REVISION =		4

CATEGORIES =		devel

HOMEPAGE =		https://twistedmatrix.com/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODPY_WANTLIB}
WANTLIB +=		pthread

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		devel/py-incremental${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-asn1${MODPY_FLAVOR}		\
			devel/py-automat${MODPY_FLAVOR}		\
			devel/py-constantly${MODPY_FLAVOR}	\
			devel/py-hamcrest${MODPY_FLAVOR}	\
			devel/py-incremental${MODPY_FLAVOR}	\
			devel/py-zopeinterface${MODPY_FLAVOR}	\
			net/py-idna${MODPY_FLAVOR}		\
			security/py-bcrypt${MODPY_FLAVOR}	\
			security/py-cryptography${MODPY_FLAVOR}	\
			security/py-openssl${MODPY_FLAVOR}	\
			security/py-service_identity${MODPY_FLAVOR} \
			www/py-hyperlink${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}
TEST_ENV =		LC_ALL=en_US.UTF-8
TESTDIR =		${WRKSRC}/regress

do-test:
	mkdir -p ${TESTDIR}
	cd ${TESTDIR} && ${LOCALBASE}/bin/trial twisted

.include <bsd.port.mk>
