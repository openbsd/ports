# $OpenBSD: Makefile,v 1.1.1.1 2018/04/27 16:33:27 danj Exp $

COMMENT =		PyPI frontend for upt

MODPY_EGG_VERSION =	0.2
DISTNAME =		upt-pypi-${MODPY_EGG_VERSION}

HOMEPAGE =		https://framagit.org/upt/upt-pypi

RUN_DEPENDS =		sysutils/upt/upt \
			www/py-requests${MODPY_FLAVOR}

TEST_DEPENDS =		sysutils/upt/upt

.include <bsd.port.mk>
