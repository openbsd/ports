# $OpenBSD: Makefile,v 1.8 2018/04/25 15:31:42 jasper Exp $

COMMENT =		best practices checker for ansible

MODPY_EGG_VERSION =	3.4.21
DISTNAME =		ansible-lint-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

RUN_DEPENDS =		sysutils/ansible
PORTHOME =		${WRKDIR}

TEST_DEPENDS =		sysutils/ansible

.include <bsd.port.mk>
