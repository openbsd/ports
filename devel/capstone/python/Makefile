COMMENT =	Python bindings for capstone

MODPY_EGG_VERSION = ${GH_TAGNAME}
REVISION =	1

PKGNAME =	py-${DISTNAME}

MODULES =	lang/python
USE_GMAKE =	Yes

WRKDIST =	${WRKDIR}/${DISTNAME}/bindings/python

FLAVORS =	python3
FLAVOR =	python3

RUN_DEPENDS =	devel/capstone/main \
		devel/py-setuptools${MODPY_FLAVOR}

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
