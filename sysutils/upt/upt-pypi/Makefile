# $OpenBSD: Makefile,v 1.5 2019/06/23 14:59:18 danj Exp $

COMMENT =		PyPI frontend for upt

MODPY_EGG_VERSION =	0.4
DISTNAME =		upt-pypi-${MODPY_EGG_VERSION}

HOMEPAGE =		https://framagit.org/upt/upt-pypi

RUN_DEPENDS =		sysutils/upt/upt \
			www/py-requests${MODPY_FLAVOR}

TEST_DEPENDS =		sysutils/upt/upt

.include <bsd.port.mk>
