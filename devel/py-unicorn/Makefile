BROKEN-sparc64 = multiple definition of use_vis3_instructions
BROKEN-riscv64 = /usr/ports/pobj/py-unicorn-1.0.2-python3/unicorn-1.0.2/src/qemu/tcg/tcg.h:30:10: fatal error: 'tcg-target.h' file not found

COMMENT =	Unicorn CPU emulator engine

MODPY_DISTV =	2.0.1.post1
DISTNAME =	unicorn-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	2

CATEGORIES =	devel

HOMEPAGE =	https://www.unicorn-engine.org

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		m pthread

BUILD_DEPENDS =		devel/cmake/core
MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

USE_GMAKE =		Yes

MAKE_ENV +=		V=1

.include <bsd.port.mk>
