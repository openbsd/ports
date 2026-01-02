COMMENT =	wayland login manager daemon

DIST_TUPLE =	srht kennylevinsen greetd 0.10.3 .
REVISION =	3

CATEGORIES =	wayland

# MIT
PERMIT_PACKAGE = Yes

MODULES =	devel/cargo

CONFIGURE_STYLE =	cargo
MODCARGO_RUSTFLAGS =	-L${LOCALBASE}/lib
SEPARATE_BUILD =	Yes
MODCARGO_INSTALL_TARGET_PATHS =	greetd # agretty
BUILD_DEPENDS =		textproc/scdoc
LIB_DEPENDS =		security/openpam
RUN_DEPENDS =		wayland/cage
WANTLIB +=		${MODCARGO_WANTLIB} pam util
# man/Makefile uses $(shell) to find scdoc
USE_GMAKE =		Yes

post-build:
	cd ${WRKSRC}/man && ${MAKE_PROGRAM} ${ALL_TARGET}

post-install:
	cd ${WRKSRC}/man && ${SETENV} MANDIR=${PREFIX}/man ${MAKE} install
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/greetd/
	cp ${WRKSRC}/config.toml ${PREFIX}/share/examples/greetd/config.toml
	# cheat by not having it in MODCARGO_INSTALL_TARGET_PATHS, as it fails to rebuild ?
	${INSTALL_PROGRAM} ${WRKBUILD}/target/release/agreety ${PREFIX}/bin/agreety
	echo "startxfce4 --wayland\nlabwc\nsway\nwayfire\nwayback\n" > ${PREFIX}/share/examples/greetd/environments

.include "crates.inc"

.include <bsd.port.mk>
