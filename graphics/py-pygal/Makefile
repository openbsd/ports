COMMENT =	python svg graph plotting library

MODPY_DISTV =	3.0.5
DISTNAME =	pygal-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	graphics

MAINTAINER =	Sebastien Marie <semarie@kapouay.eu.org>

# LGPLv3+
PERMIT_PACKAGE=	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS +=	devel/py-test-runner

RUN_DEPENDS +=		textproc/py-lxml

TEST_DEPENDS +=		www/py-flask \
			textproc/py-lxml \
			devel/py-test-runner \
			devel/py-test-cov

# missing TEST_DEPENDS:
# pyquery cairosvg
# pygal_maps_world pygal_maps_fr pygal_maps_ch
# coveralls	(devel/py-coveralls is py2 only)
# pytest-flake8 pytest-isort
NO_TEST =	Yes

.include <bsd.port.mk>
