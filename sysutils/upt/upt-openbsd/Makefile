# $OpenBSD: Makefile,v 1.2 2018/11/28 14:57:45 espie Exp $

COMMENT =		OpenBSD backend for upt

MODPY_EGG_VERSION =	0.4
DISTNAME =		upt-openbsd-${MODPY_EGG_VERSION}
REVISION = 1

HOMEPAGE =		https://framagit.org/upt/upt-openbsd

RUN_DEPENDS =		databases/sqlports>=7.0 \
			sysutils/upt/upt
TEST_DEPENDS =		sysutils/upt/upt


.include <bsd.port.mk>
