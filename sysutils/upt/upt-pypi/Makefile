# $OpenBSD: Makefile,v 1.3 2019/02/11 19:02:58 danj Exp $

COMMENT =		PyPI frontend for upt

MODPY_EGG_VERSION =	0.3
DISTNAME =		upt-pypi-${MODPY_EGG_VERSION}

HOMEPAGE =		https://framagit.org/upt/upt-pypi

RUN_DEPENDS =		sysutils/upt/upt \
			www/py-requests${MODPY_FLAVOR}

TEST_DEPENDS =		sysutils/upt/upt

.include <bsd.port.mk>
