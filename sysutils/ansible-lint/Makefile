# $OpenBSD: Makefile,v 1.23 2021/02/23 19:39:40 sthen Exp $

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

BUILD_DEPENDS =		devel/py-setuptools_scm_git_archive${MODPY_FLAVOR} \
			textproc/py-toml${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-enrich${MODPY_FLAVOR} \
			devel/py-rich${MODPY_FLAVOR} \
			devel/py-wcmatch${MODPY_FLAVOR} \
			sysutils/ansible \
			sysutils/py-packaging${MODPY_FLAVOR} \
			textproc/py-ruamel.yaml${MODPY_FLAVOR}

.include <bsd.port.mk>
