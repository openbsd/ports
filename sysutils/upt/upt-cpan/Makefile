# $OpenBSD: Makefile,v 1.1.1.1 2018/04/27 16:33:27 danj Exp $

COMMENT =		CPAN frontend for upt

MODPY_EGG_VERSION =	0.3
DISTNAME =		upt-cpan-${MODPY_EGG_VERSION}

HOMEPAGE =		https://framagit.org/upt/upt-cpan

RUN_DEPENDS =		sysutils/upt/upt \
			www/py-requests${MODPY_FLAVOR}
TEST_DEPENDS =		www/py-requests-mock${MODPY_FLAVOR}


.include <bsd.port.mk>
