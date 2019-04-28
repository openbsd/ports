# $OpenBSD: Makefile,v 1.2 2019/04/28 20:51:54 sthen Exp $

COMMENT =		CPAN frontend for upt

MODPY_EGG_VERSION =	0.3
DISTNAME =		upt-cpan-${MODPY_EGG_VERSION}
REVISION =		0

HOMEPAGE =		https://framagit.org/upt/upt-cpan

RUN_DEPENDS =		sysutils/upt/upt \
			www/py-requests${MODPY_FLAVOR}
TEST_DEPENDS =		www/py-requests-mock${MODPY_FLAVOR}


.include <bsd.port.mk>
