COMMENT =		XRandR GUI
MODPY_DISTV =	0.1.11
DISTNAME =		arandr-${MODPY_DISTV}
CATEGORIES =		x11 sysutils
HOMEPAGE =		https://christian.amsuess.com/tools/arandr/
REVISION =		2

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

SITES =			https://christian.amsuess.com/tools/arandr/files/

MODULES =		lang/python
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/desktop-file-utils \
			devel/py-gobject3
BUILD_DEPENDS =		devel/gettext,-tools \
			textproc/py-docutils

NO_TEST =		Yes

.include <bsd.port.mk>
