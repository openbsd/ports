# $OpenBSD: Makefile,v 1.7 2020/07/03 21:13:12 sthen Exp $

COMMENT =		PyPI frontend for upt

MODPY_EGG_VERSION =	0.4
DISTNAME =		upt-pypi-${MODPY_EGG_VERSION}
REVISION =		0

HOMEPAGE =		https://framagit.org/upt/upt-pypi

MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	upt_pypi/

RUN_DEPENDS =		sysutils/upt/upt \
			www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
