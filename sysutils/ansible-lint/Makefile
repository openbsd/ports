# $OpenBSD: Makefile,v 1.26 2021/03/27 14:10:12 sthen Exp $

COMMENT =		best practices checker for ansible

MODPY_EGG_VERSION =	5.0.6
DISTNAME =		ansible-lint-${MODPY_EGG_VERSION}

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

# for tests (can't use MODPY_PYTEST until we have pytest-4.6.6+)
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
