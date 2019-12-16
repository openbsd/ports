# $OpenBSD: Makefile,v 1.6 2019/12/16 18:35:10 kmos Exp $

COMMENT =		package software from any package manager to any OS

MODPY_EGG_VERSION =	0.9
DISTNAME =		upt-${MODPY_EGG_VERSION}

HOMEPAGE =		https://framagit.org/upt/upt

MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	upt/

RUN_DEPENDS =		textproc/py-spdx-lookup${MODPY_FLAVOR}

.include <bsd.port.mk>
