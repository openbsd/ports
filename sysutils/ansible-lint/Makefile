# $OpenBSD: Makefile,v 1.4 2017/09/04 17:28:49 jasper Exp $

COMMENT =		best practices checker for ansible

MODPY_EGG_VERSION =	3.4.15
DISTNAME =		ansible-lint-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

RUN_DEPENDS =		sysutils/ansible
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
