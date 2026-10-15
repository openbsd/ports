COMMENT =	python svg graph plotting library

MODPY_DISTV =	3.1.3
REVISION =	0
DISTNAME =	pygal-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	graphics

# https://github.com/Kozea/pygal
HOMEPAGE =	https://www.pygal.org/

# LGPLv3+
PERMIT_PACKAGE=	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS +=		devel/py-importlib-metadata \
			textproc/py-lxml

TEST_DEPENDS +=		www/py-flask \
			textproc/py-lxml \
			devel/py-test-cov

# missing TEST_DEPENDS:
# pyquery cairosvg
# pygal_maps_world pygal_maps_fr pygal_maps_ch
# coveralls	(devel/py-coveralls is py2 only)
# pytest-flake8 pytest-isort
NO_TEST =	Yes

.include <bsd.port.mk>
