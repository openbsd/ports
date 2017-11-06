# $OpenBSD: Makefile,v 1.1 2017/11/06 08:54:29 rpointel Exp $

COMMENT =	Python bindings for capstone

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
