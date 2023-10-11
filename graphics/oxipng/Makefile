COMMENT =		multithreaded lossless PNG compression optimizer

GH_ACCOUNT =		shssoichiro
GH_PROJECT =		oxipng
GH_TAGNAME =		v8.0.0

CATEGORIES =		graphics

MAINTAINER =		Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODCARGO_WANTLIB} m

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

.include "crates.inc"

.include <bsd.port.mk>
