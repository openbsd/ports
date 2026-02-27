COMMENT =	sanitizer for OpenType fonts

V =		9.2.0
DISTNAME =	ots-$V
PKGNAME =	opentype-sanitizer-$V

CATEGORIES =	print

HOMEPAGE =	https://github.com/khaledhosny/ots

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} c freetype lz4 m woff2dec z

SITES =		https://github.com/khaledhosny/ots/releases/download/v$V/

EXTRACT_SUFX =	.tar.xz

COMPILER =	base-clang ports-gcc
COMPILER_LANGS = c++

MODULES =	devel/meson

BUILD_DEPENDS =	devel/gtest

LIB_DEPENDS =	archivers/lz4 \
		archivers/woff2

# gtest requires C++14
CONFIGURE_ARGS =	-Dcpp_std=c++14

.include <bsd.port.mk>
