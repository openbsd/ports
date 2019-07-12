# $OpenBSD: Makefile,v 1.17 2019/07/12 20:49:39 sthen Exp $

COMMENT =		best practices checker for ansible

MODPY_EGG_VERSION =	4.1.0
DISTNAME =		ansible-lint-${MODPY_EGG_VERSION}
REVISION =		0

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
PORTHOME =		${WRKDIR}

# done in install anyway, but needed for tests
MODPY_ADJ_FILES =	bin/ansible-lint

.include <bsd.port.mk>
