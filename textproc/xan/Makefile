COMMENT =		command line tool for CSV processing

GH_ACCOUNT =		medialab
GH_PROJECT =		xan
GH_TAGNAME =		0.54.1

CATEGORIES =		textproc

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# MIT / UNLICENSE
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODCARGO_WANTLIB} m zstd

MODULES =		devel/cargo
MODCARGO_RUSTFLAGS +=	-L${LOCALBASE}/lib

LIB_DEPENDS =		archivers/zstd

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	cargo

# some tests want files from tests/resources
pre-test:
	ln -fs ${WRKDIST}/tests ${WRKBUILD}/

.include "crates.inc"
.include <bsd.port.mk>
