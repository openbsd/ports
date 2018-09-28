# $OpenBSD: Makefile,v 1.2 2018/09/28 20:41:51 danj Exp $

COMMENT =		PyPI frontend for upt

MODPY_EGG_VERSION =	0.2.1
DISTNAME =		upt-pypi-${MODPY_EGG_VERSION}

HOMEPAGE =		https://framagit.org/upt/upt-pypi

RUN_DEPENDS =		sysutils/upt/upt \
			www/py-requests${MODPY_FLAVOR}

TEST_DEPENDS =		sysutils/upt/upt

.include <bsd.port.mk>
