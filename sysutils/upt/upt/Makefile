# $OpenBSD: Makefile,v 1.7 2020/07/03 21:13:12 sthen Exp $

COMMENT =		package software from any package manager to any OS

MODPY_EGG_VERSION =	0.9
DISTNAME =		upt-${MODPY_EGG_VERSION}
REVISION =		0

HOMEPAGE =		https://framagit.org/upt/upt

MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	upt/

RUN_DEPENDS =		textproc/py-spdx-lookup${MODPY_FLAVOR}

.include <bsd.port.mk>
