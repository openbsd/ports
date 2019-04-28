# $OpenBSD: Makefile,v 1.2 2019/04/28 20:51:41 sthen Exp $

COMMENT =	python svg graph plotting library

MODPY_EGG_VERSION = 2.4.0
DISTNAME =	pygal-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	graphics

MAINTAINER =	Sebastien Marie <semarie@online.fr>

# LGPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=

BUILD_DEPENDS +=	devel/py-test-runner${MODPY_FLAVOR}

RUN_DEPENDS +=		textproc/py-lxml${MODPY_FLAVOR}

TEST_DEPENDS +=		www/py-flask${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			devel/py-test-runner${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR}

# missing TEST_DEPENDS:
# pyquery cairosvg
# pygal_maps_world pygal_maps_fr pygal_maps_ch
# coveralls	(devel/py-coveralls is py2 only)
# pytest-flake8 pytest-isort
NO_TEST =	Yes

.include <bsd.port.mk>
