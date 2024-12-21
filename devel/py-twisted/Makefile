COMMENT =		asynchronous networking Python framework

MODPY_DISTV =	24.7.0

DISTNAME =		twisted-${MODPY_DISTV}
PKGNAME =		py-twisted-${MODPY_DISTV}
REVISION =		0

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

RUN_DEPENDS =		devel/py-attrs		\
			devel/py-automat		\
			devel/py-constantly	\
			devel/py-hamcrest	\
			devel/py-incremental	\
			devel/py-typing-extensions \
			devel/py-zopeinterface	\
			net/py-idna		\
			security/py-bcrypt	\
			security/py-cryptography	\
			security/py-openssl	\
			security/py-service_identity \
			www/py-hyperlink

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH} \
			devel/py-hypothesis
TEST_ENV =		LC_ALL=en_US.UTF-8
TESTDIR =		${WRKSRC}/regress

do-test:
	mkdir -p ${TESTDIR}
	cd ${TESTDIR} && ${LOCALBASE}/bin/trial twisted

.include <bsd.port.mk>
