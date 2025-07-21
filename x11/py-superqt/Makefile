COMMENT =		widgets and components for PyQt/PySide

MODPY_DISTV =		0.7.5
DISTNAME =		superqt-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		x11

HOMEPAGE =		https://pyapp-kit.github.io/superqt/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatch-vcs

RUN_DEPENDS =		devel/py-typing-extensions \
			textproc/py-pygments \
			x11/py-qt6 \
			x11/py-qtpy

NO_TEST =		Yes

.include <bsd.port.mk>
