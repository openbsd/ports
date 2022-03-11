COMMENT =		Gnu All Mobile Management Utilities GUI

MODPY_EGG_VERSION = 	0.44
DISTNAME =		wammu-${MODPY_EGG_VERSION}
REVISION =		4

CATEGORIES =		comms x11

HOMEPAGE =		https://wammu.eu/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://dl.cihar.com/wammu/v0/

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_SETUPTOOLS = 	Yes

RUN_DEPENDS =		comms/py-gammu \
			devel/desktop-file-utils \
			devel/py-six${MODPY_FLAVOR} \
			x11/py-wxPython

NO_TEST = 		Yes

.include <bsd.port.mk>
