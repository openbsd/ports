BROKEN-sparc64 = "error[E0412]: cannot find type c_char in this scope"

COMMENT =	lightweight color picker

GH_ACCOUNT =	Soft
GH_PROJECT =	xcolor
GH_TAGNAME =	0.5.1
REVISION =	4

CATEGORIES =	x11

HOMEPAGE =	https://soft.github.io/xcolor/

MAINTAINER =	Laurence Tratt <laurie@tratt.net>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODCARGO_WANTLIB} m xcb xcb-shape X11 X11-xcb Xcursor

MODULES =		devel/cargo \
			lang/python

MODPY_RUNDEP =		No

.include "crates.inc"

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes

# for riscv64 and powerpc64, please keep: cc >= 1.0.73 and libc >= 0.2.113
MODCARGO_CRATES_UPDATE =	cc libc
MODCARGO_RUSTFLAGS =	-L${X11BASE}/lib

post-install:
	${INSTALL_MAN} ${WRKSRC}/man/xcolor.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
