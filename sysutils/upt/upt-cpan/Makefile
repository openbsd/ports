# $OpenBSD: Makefile,v 1.5 2020/07/03 21:13:12 sthen Exp $

COMMENT =		CPAN frontend for upt

MODPY_EGG_VERSION =	0.5
DISTNAME =		upt-cpan-${MODPY_EGG_VERSION}
REVISION =		0

HOMEPAGE =		https://framagit.org/upt/upt-cpan

MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	upt_cpan/

RUN_DEPENDS =		sysutils/upt/upt \
			www/py-requests${MODPY_FLAVOR}
TEST_DEPENDS =		www/py-requests-mock${MODPY_FLAVOR}


.include <bsd.port.mk>
