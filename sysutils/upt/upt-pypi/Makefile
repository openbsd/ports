# $OpenBSD: Makefile,v 1.4 2019/04/28 20:51:54 sthen Exp $

COMMENT =		PyPI frontend for upt

MODPY_EGG_VERSION =	0.3
DISTNAME =		upt-pypi-${MODPY_EGG_VERSION}
REVISION =		0

HOMEPAGE =		https://framagit.org/upt/upt-pypi

RUN_DEPENDS =		sysutils/upt/upt \
			www/py-requests${MODPY_FLAVOR}

TEST_DEPENDS =		sysutils/upt/upt

.include <bsd.port.mk>
