COMMENT =		JSON viewer

GH_ACCOUNT =		PaulJuliusMartinez
GH_PROJECT =		jless
GH_TAGNAME =		v0.8.0
REVISION =		1

CATEGORIES =		textproc

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c c++abi pthread xcb

HOMEPAGE =		https://jless.io/

MODULES =		devel/cargo \
			lang/python
DISTFILES +=		${GH_DISTFILE}

CONFIGURE_STYLE =	cargo
MODCARGO_RUSTFLAGS =	-L/usr/X11R6/lib
MODPY_RUNDEP =		No

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jless
	${INSTALL_DATA} ${WRKSRC}/src/jless.help ${PREFIX}/share/doc/jless/

.include "crates.inc"
.include <bsd.port.mk>
