# $OpenBSD: Makefile,v 1.2 2016/11/10 14:30:47 landry Exp $

COMMENT =		best practices checker for ansible

MODPY_EGG_VERSION =	3.4.3
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
