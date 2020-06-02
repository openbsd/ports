# $OpenBSD: Makefile,v 1.5 2020/06/02 11:47:10 jasper Exp $

COMMENT =	Python bindings for capstone

MODPY_EGG_VERSION = ${GH_TAGNAME}

PKGNAME =	py-${DISTNAME}

MODULES =	lang/python
USE_GMAKE =	Yes

WRKDIST =	${WRKDIR}/${DISTNAME}/bindings/python

FLAVORS =	python3
FLAVOR ?=

RUN_DEPENDS =	devel/capstone/main

TEST_DEPENDS =  devel/capstone/python
TEST_TARGET = 	check

MODPY_ADJ_FILES = test*.py
MODPY_SETUPTOOLS =	Yes

MAKE_ENV =	LIBCAPSTONE_PATH=${LOCALBASE}/lib/

SUBST_VARS +=	_SHLIB_VERSION

pre-configure:
	${SUBST_CMD} ${WRKSRC}/capstone/__init__.py

do-test:
	cd ${WRKSRC} && ${MAKE_PROGRAM} ${TEST_TARGET}

.include <bsd.port.mk>
