# $OpenBSD: Makefile,v 1.6 2019/12/16 18:35:10 kmos Exp $

COMMENT =		PyPI frontend for upt

MODPY_EGG_VERSION =	0.4
DISTNAME =		upt-pypi-${MODPY_EGG_VERSION}

HOMEPAGE =		https://framagit.org/upt/upt-pypi

MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	upt_pypi/

RUN_DEPENDS =		sysutils/upt/upt \
			www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
