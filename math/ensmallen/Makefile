COMMENT = 	C++ template library for function minimization
DISTNAME = 	ensmallen-2.10.3
CATEGORIES = 	math
HOMEPAGE = 	http://www.ensmallen.org/
MAINTAINER =	Marc Espie <espie@openbsd.org>
REVISION =      0

# BSD
PERMIT_PACKAGE = Yes

SITES =		${HOMEPAGE}/files/

COMPILER = 	base-clang ports-gcc
MODULES += 	devel/cmake

# Can't be a LIB_DEPENDS since ensmallen only installs headers.
BUILD_DEPENDS += math/armadillo

RUN_DEPENDS += math/armadillo

CONFIGURE_STYLE = cmake

.include <bsd.port.mk>
