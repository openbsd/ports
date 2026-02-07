# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =	sparc64

COMMENT =	static site generator

GH_ACCOUNT =	getzola
GH_PROJECT =	zola
GH_TAGNAME =	v0.22.1

HOMEPAGE =	https://www.getzola.org

CATEGORIES =	www

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	${MODCARGO_WANTLIB} m onig

LIB_DEPENDS +=	textproc/oniguruma

MODULES =	devel/cargo

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

.include "crates.inc"
.include <bsd.port.mk>
