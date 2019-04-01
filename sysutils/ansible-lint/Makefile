# $OpenBSD: Makefile,v 1.15 2019/04/01 16:44:56 sthen Exp $

COMMENT =		best practices checker for ansible

MODPY_EGG_VERSION =	4.1.0
DISTNAME =		ansible-lint-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =		devel/py-setuptools_scm_git_archive${MODPY_FLAVOR}
RUN_DEPENDS =		sysutils/ansible \
			textproc/py-ruamel.yaml${MODPY_FLAVOR}
PORTHOME =		${WRKDIR}

# done in install anyway, but needed for tests
MODPY_ADJ_FILES =	bin/ansible-lint

.include <bsd.port.mk>
