COMMENT=	Python library to control i3wm and sway

MODPY_DISTV=	2.2.1
DISTNAME=	i3ipc-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	x11
REVISION=	3

HOMEPAGE=	https://github.com/altdesktop/i3ipc-python/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	x11/py-xlib
TEST_DEPENDS=	i3-*|i3-gaps-*:x11/i3

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} run-tests.py

.include <bsd.port.mk>
