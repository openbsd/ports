COMMENT =		take control of Steam from your terminal

MODPY_DISTV =	0.9.5
DISTNAME =		steamctl-${MODPY_DISTV}
CATEGORIES =		games
HOMEPAGE =		https://github.com/ValvePython/steamctl
REVISION =		3

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-appdirs \
			devel/py-argcomplete \
			devel/py-arrow \
			devel/py-setuptools \
			devel/py-tqdm \
			games/py-steam \
			archivers/py-vpk \
			graphics/py-pyqrcode \
			www/py-beautifulsoup4

# tests not included in pypi tarball
NO_TEST =		Yes

FIX_EXTRACT_PERMISSIONS =	Yes

.include <bsd.port.mk>
