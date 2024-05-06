BROKEN-sparc64 = multiple definition of use_vis3_instructions
BROKEN-riscv64 = /usr/ports/pobj/py-unicorn-1.0.2-python3/unicorn-1.0.2/src/qemu/tcg/tcg.h:30:10: fatal error: 'tcg-target.h' file not found

COMMENT =	Unicorn CPU emulator engine

MODPY_EGG_VERSION =	2.0.1.post1
DISTNAME =	unicorn-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	https://www.unicorn-engine.org

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		m pthread

BUILD_DEPENDS =		devel/cmake
MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

USE_GMAKE =		Yes

MAKE_ENV +=		V=1

.include <bsd.port.mk>
