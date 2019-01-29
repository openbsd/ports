# $OpenBSD: Makefile,v 1.12 2019/01/29 21:07:28 jasper Exp $

COMMENT =		best practices checker for ansible

MODPY_EGG_VERSION =	4.0.1
DISTNAME =		ansible-lint-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

BUILD_DEPENDS =		devel/py-setuptools_scm
RUN_DEPENDS =		sysutils/ansible
PORTHOME =		${WRKDIR}

NO_TEST =		Yes

.include <bsd.port.mk>
