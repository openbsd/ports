# $OpenBSD: Makefile,v 1.3 2019/02/11 18:52:07 danj Exp $

COMMENT =		OpenBSD backend for upt

MODPY_EGG_VERSION =	0.4
DISTNAME =		upt-openbsd-${MODPY_EGG_VERSION}
REVISION = 2

HOMEPAGE =		https://framagit.org/upt/upt-openbsd

RUN_DEPENDS =		databases/sqlports>=7.0 \
			sysutils/upt/upt
TEST_DEPENDS =		sysutils/upt/upt


.include <bsd.port.mk>
