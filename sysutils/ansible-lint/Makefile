# $OpenBSD: Makefile,v 1.1.1.1 2016/09/01 15:07:11 landry Exp $

COMMENT =		best practices checker for ansible

MODPY_EGG_VERSION =	3.2.5
GH_ACCOUNT =		willthames
GH_PROJECT =		ansible-lint
GH_COMMIT =		868260aae31959fb156fa11bb6254d370271adca
DISTNAME =		ansible-lint-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		sysutils/ansible
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
