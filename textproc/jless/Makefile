COMMENT =		JSON viewer

GH_ACCOUNT =		PaulJuliusMartinez
GH_PROJECT =		jless
GH_TAGNAME =		v0.8.0

CATEGORIES =		textproc

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c c++abi pthread xcb

MODULES =		devel/cargo \
			lang/python
DISTFILES +=		${GH_DISTFILE}

CONFIGURE_STYLE =	cargo
MODCARGO_RUSTFLAGS =	-L/usr/X11R6/lib
MODPY_RUNDEP =		No

.include "crates.inc"

.include <bsd.port.mk>
