COMMENT =		multithreaded lossless PNG compression optimizer

GH_ACCOUNT =		shssoichiro
GH_PROJECT =		oxipng
GH_TAGNAME =		v9.1.2

CATEGORIES =		graphics

MAINTAINER =		Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB +=		${MODCARGO_WANTLIB} m

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

.include "crates.inc"

.include <bsd.port.mk>
