COMMENT =	library for parsing CSS using the Rust cssparser crate
VERSION =	1.0.0
DISTNAME =	cxx-rust-cssparser-${VERSION}

SHARED_LIBS +=	cxx-rust-cssparser        0.0 # 0.0

DIST_TUPLE +=	kde libraries cxx-rust-cssparser v${VERSION} .

CATEGORIES =	devel graphics

# BSD, CCO, LGPLv2, LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODCARGO_WANTLIB} c++ execinfo m util

MODULES =		devel/cmake \
			devel/cargo

MODCARGO_BUILD =	No
MODCARGO_INSTALL =	No

MODCARGO_CARGOTOML =	${WRKSRC}/rust/Cargo.toml

BUILD_DEPENDS =		devel/corrosion

CONFIGURE_ENV +=	CARGO_HOME=${WRKDIR}/cargo-home
MAKE_ENV +=		CARGO_HOME=${WRKDIR}/cargo-home

WRKDIST =		${WRKDIR}/cxx-rust-cssparser-v${VERSION}-2c5cd92c14164e6da2b98beba1edeaecdc1445d1

CXXBRIDGE_V =		1.0.194
CXXBRIDGE_LOCKFILE =	cxxbridge-cargo.lock

pre-configure:
	# We ship our own Cargo.lock for cxxbridge-cmd so the build resolves
	# against the vendored crates instead of reaching out to crates.io
	cp ${FILESDIR}/${CXXBRIDGE_LOCKFILE} \
		${MODCARGO_VENDOR_DIR}/cxxbridge-cmd-${CXXBRIDGE_V}/Cargo.lock
	# We replaced Cargo.lock so we drop its entry from .cargo-checksum.json
	# because otherwise cargo's integrity check fails the --locked build.
	cd ${MODCARGO_VENDOR_DIR}/cxxbridge-cmd-${CXXBRIDGE_V} && \
		sed -i 's,"Cargo.lock":"[0-9a-f]*"\,,,' .cargo-checksum.json
	mkdir -p ${WRKDIR}/cargo-home
	printf '%s\n' \
		'[source.crates-io]' \
		'replace-with = "modcargo"' \
		'[source.modcargo]' \
		'directory = "${MODCARGO_VENDOR_DIR}"' \
		'[net]' \
		'offline = true' \
		> ${WRKDIR}/cargo-home/config.toml

# This file includes MODCARGO_CARGOTOML and CXXBRIDGE_LOCKFILE crates.
.include "crates.inc"

.include <bsd.port.mk>
