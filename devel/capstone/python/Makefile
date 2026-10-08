COMMENT =	Python bindings for capstone

MODPY_DISTV =	${GH_TAGNAME}
PKGNAME =	py-${DISTNAME}

MODULES =	lang/python
MODPY_PYBUILD =	setuptools
USE_GMAKE =	Yes

WRKSRC =	${WRKDIST}/bindings/python

RUN_DEPENDS =	devel/capstone/main=${GH_TAGNAME}

TEST_DEPENDS =  ${FULLPKGNAME}:${BUILD_PKGPATH}
TEST_TARGET =	check

MAKE_ENV =	LIBCAPSTONE_PATH=${LOCALBASE}/lib/

SUBST_VARS +=	_SHLIB_VERSION

pre-configure:
	${SUBST_CMD} ${WRKSRC}/capstone/__init__.py

do-test:
	cd ${WRKSRC} && ${MAKE_PROGRAM} ${TEST_TARGET}

.include <bsd.port.mk>
