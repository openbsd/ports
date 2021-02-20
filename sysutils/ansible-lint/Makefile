# $OpenBSD: Makefile,v 1.20 2021/02/20 07:44:36 ajacoutot Exp $

BROKEN =		missing dependencies

COMMENT =		best practices checker for ansible

MODPY_EGG_VERSION =	5.0.1
DISTNAME =		ansible-lint-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =		devel/py-setuptools_scm_git_archive${MODPY_FLAVOR}
RUN_DEPENDS =		sysutils/ansible \
			textproc/py-ruamel.yaml${MODPY_FLAVOR}
#PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
