# $OpenBSD: Makefile,v 1.14 2019/02/19 18:58:33 jasper Exp $

COMMENT =		best practices checker for ansible

MODPY_EGG_VERSION =	4.0.1
DISTNAME =		ansible-lint-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		sysutils

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =		devel/py-setuptools_scm_git_archive${MODPY_FLAVOR}
RUN_DEPENDS =		sysutils/ansible
PORTHOME =		${WRKDIR}

NO_TEST =		Yes

.include <bsd.port.mk>
