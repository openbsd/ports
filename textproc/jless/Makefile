COMMENT =		JSON viewer

GH_ACCOUNT =		PaulJuliusMartinez
GH_PROJECT =		jless
GH_TAGNAME =		v0.9.0
REVISION =		1

CATEGORIES =		textproc

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODCARGO_WANTLIB} xcb

HOMEPAGE =		https://jless.io/

MODULES =		devel/cargo \
			lang/python

CONFIGURE_STYLE =	cargo
# for riscv64 and powerpc64, please keep: cc >= 1.0.73 and libc >= 0.2.113
MODCARGO_CRATES_UPDATE =	cc libc
MODCARGO_RUSTFLAGS =	-L/usr/X11R6/lib
MODPY_RUNDEP =		No

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jless
	${INSTALL_DATA} ${WRKSRC}/src/jless.help ${PREFIX}/share/doc/jless/

.include "crates.inc"
.include <bsd.port.mk>
