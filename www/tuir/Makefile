# $OpenBSD: Makefile,v 1.2 2020/05/14 19:01:38 kn Exp $

COMMENT =		terminal UI for Reddit

MODPY_EGG_VERSION =	1.29.0

DISTNAME =		tuir-${MODPY_EGG_VERSION}

CATEGORIES =		www

HOMEPAGE =		https://gitlab.com/ajak/tuir

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-decorator${MODPY_FLAVOR} \
			devel/py-kitchen${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}>=2.4.0 \
			www/py-beautifulsoup4${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-coverage${MODPY_FLAVOR} \
			devel/py-coveralls${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR} \
			devel/pylint${MODPY_FLAVOR} \
			www/py-vcrpy${MODPY_FLAVOR}

.include <bsd.port.mk>
