# $OpenBSD: Makefile,v 1.4 2019/04/28 20:51:54 sthen Exp $

COMMENT =		OpenBSD backend for upt

MODPY_EGG_VERSION =	0.4
DISTNAME =		upt-openbsd-${MODPY_EGG_VERSION}
REVISION = 3

HOMEPAGE =		https://framagit.org/upt/upt-openbsd

RUN_DEPENDS =		databases/sqlports>=7.0 \
			sysutils/upt/upt
TEST_DEPENDS =		sysutils/upt/upt


.include <bsd.port.mk>
