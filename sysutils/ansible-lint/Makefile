# $OpenBSD: Makefile,v 1.10 2018/11/20 23:22:47 sthen Exp $

COMMENT =		best practices checker for ansible

MODPY_EGG_VERSION =	3.5.1
DISTNAME =		ansible-lint-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

RUN_DEPENDS =		sysutils/ansible
PORTHOME =		${WRKDIR}

NO_TEST =		Yes

.include <bsd.port.mk>
