COMMENT =	Python bindings for capstone

MODPY_DISTV =	${GH_TAGNAME}
REVISION =	2

PKGNAME =	py-${DISTNAME}

MODULES =	lang/python
USE_GMAKE =	Yes

WRKDIST =	${WRKDIR}/${DISTNAME}/bindings/python

RUN_DEPENDS =	devel/capstone/main \
		devel/py-setuptools

TEST_DEPENDS =  devel/capstone/python
TEST_TARGET =	check

MODPY_ADJ_FILES = test*.py
MODPY_PYBUILD =	setuptools

MAKE_ENV =	LIBCAPSTONE_PATH=${LOCALBASE}/lib/

SUBST_VARS +=	_SHLIB_VERSION

pre-configure:
	${SUBST_CMD} ${WRKSRC}/capstone/__init__.py

do-test:
	cd ${WRKSRC} && ${MAKE_PROGRAM} ${TEST_TARGET}

.include <bsd.port.mk>
