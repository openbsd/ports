# $OpenBSD: Makefile,v 1.21 2021/02/20 08:24:56 ajacoutot Exp $

COMMENT =		best practices checker for ansible

MODPY_EGG_VERSION =	5.0.1
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

RUN_DEPENDS =		devel/py-enrich${MODPY_FLAVOR} \
			devel/py-rich${MODPY_FLAVOR} \
			devel/py-wcmatch${MODPY_FLAVOR} \
			sysutils/ansible \
			sysutils/py-packaging${MODPY_FLAVOR} \
			textproc/py-ruamel.yaml${MODPY_FLAVOR}

.include <bsd.port.mk>
