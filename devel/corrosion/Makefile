COMMENT =	CMake module to integrate Rust into a CMake project

VERSION =	0.6.1
DISTNAME =	corrosion-${VERSION}

DIST_TUPLE +=	github corrosion-rs corrosion v${VERSION} .

CATEGORIES =	devel

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# BSD, CCO, LGPLv2, LGPLv2.1
PERMIT_PACKAGE =	Yes

MODULES =		devel/cmake \
			lang/rust

TEST_DEPENDS =		devel/cbindgen

NO_BUILD =		Yes

.include <bsd.port.mk>
