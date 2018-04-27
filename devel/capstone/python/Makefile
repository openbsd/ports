# $OpenBSD: Makefile,v 1.2 2018/04/27 06:10:49 bentley Exp $

COMMENT =	Python bindings for capstone

REVISION =	0

MODPY_EGG_VERSION = ${VERSION}

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

do-test:
	cd ${WRKSRC} && ${MAKE_PROGRAM} ${TEST_TARGET}

.include <bsd.port.mk>
