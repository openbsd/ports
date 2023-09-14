# ring-v0.16.20 does not support those archs
NOT_FOR_ARCHS =	powerpc64 riscv64 sparc64

COMMENT =	static site generator

GH_ACCOUNT =	getzola
GH_PROJECT =	zola
GH_TAGNAME =	v0.17.2

HOMEPAGE =	https://www.getzola.org

CATEGORIES =	www

MAINTAINER =	Peter H. Ezetta <protocall7@gmail.com>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	c c++abi m pthread onig

BUILD_DEPENDS +=	security/rust-ring

LIB_DEPENDS +=	textproc/oniguruma

MODULES =	devel/cargo

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

.include "modules.inc"
.include <bsd.port.mk>
