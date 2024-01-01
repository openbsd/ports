COMMENT =		efficient duplicate file finder

DIST_TUPLE =		github pkolaczk fclones v0.34.0 .

CATEGORIES =		sysutils

MAINTAINER =		Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODCARGO_WANTLIB} m

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/target/release/fclones ${PREFIX}/bin

.include "crates.inc"

.include <bsd.port.mk>
