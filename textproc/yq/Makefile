# $OpenBSD: Makefile,v 1.10 2021/06/19 12:09:54 kn Exp $

COMMENT =		jq wrapper for YAML/XML documents

MODPY_EGG_VERSION =	2.12.2
DISTNAME =		yq-${MODPY_EGG_VERSION}

CATEGORIES =		textproc

HOMEPAGE =		https://kislyuk.github.io/yq/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	test/test.py

RUN_DEPENDS =		devel/py-argcomplete${MODPY_FLAVOR} \
			textproc/jq \
			textproc/py-toml${MODPY_FLAVOR} \
			textproc/py-xmltodict${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR}

TEST_DEPENDS =		devel/flake8 \
			devel/py-coverage${MODPY_FLAVOR} \
			devel/py-wheel${MODPY_FLAVOR}

.include <bsd.port.mk>
