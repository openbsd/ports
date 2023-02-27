COMMENT =		simple, fast and user-friendly alternative to 'find'

GH_ACCOUNT =		sharkdp
GH_PROJECT =		fd
GH_TAGNAME =		v8.7.0

CATEGORIES =		sysutils

# MIT/Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODCARGO_WANTLIB} pthread

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

MODCARGO_NO_DEFAULT_FEATURES =	Yes
MODCARGO_FEATURES =	completions
MODCARGO_INSTALL =	No
USE_GMAKE =		Yes

xxpost-install:
	${INSTALL_DATA} ${WRKSRC}/doc/fd.1 ${PREFIX}/man/man1
	cd ${WRKBUILD}; make -f ../fd-*/Makefile completions

.include "crates.inc"

.include <bsd.port.mk>
