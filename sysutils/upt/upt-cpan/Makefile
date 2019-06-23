# $OpenBSD: Makefile,v 1.3 2019/06/23 14:49:22 danj Exp $

COMMENT =		CPAN frontend for upt

MODPY_EGG_VERSION =	0.5
DISTNAME =		upt-cpan-${MODPY_EGG_VERSION}

HOMEPAGE =		https://framagit.org/upt/upt-cpan

RUN_DEPENDS =		sysutils/upt/upt \
			www/py-requests${MODPY_FLAVOR}
TEST_DEPENDS =		www/py-requests-mock${MODPY_FLAVOR}


.include <bsd.port.mk>
