# $OpenBSD: Makefile,v 1.1.1.1 2021/06/19 12:45:52 semarie Exp $

COMMENT =	record the CPU and memory activity of a process

MODPY_EGG_VERSION =	1.2

DISTNAME =	psrecord-${MODPY_EGG_VERSION}

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/astrofrog/psrecord

# BSD-2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_TEST_DIR =	${WRKSRC}/psrecord

RUN_DEPENDS =		sysutils/py-psutil${MODPY_FLAVOR}

.include <bsd.port.mk>
