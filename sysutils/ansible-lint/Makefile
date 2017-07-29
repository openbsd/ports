# $OpenBSD: Makefile,v 1.3 2017/07/29 20:14:42 jasper Exp $

COMMENT =		best practices checker for ansible

MODPY_EGG_VERSION =	3.4.3
REVISION =		0
GH_ACCOUNT =		willthames
GH_PROJECT =		ansible-lint
GH_COMMIT =		188d63959c73680bcd442a292ee4872b332f954c
DISTNAME =		ansible-lint-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		sysutils/ansible
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
