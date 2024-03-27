# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =         sparc64

COMMENT =		produce RRDP notification, snapshot and delta files

GH_ACCOUNT =		NLNetLabs
GH_PROJECT =		rrdpit
GH_TAGNAME =		v0.0.4

CATEGORIES =		net

# BSD 3-clause
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODCARGO_WANTLIB}

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

RELEASE_DIR =		${MODCARGO_TARGET_DIR}/release

post-patch:
	cp ${FILESDIR}/Cargo.lock ${WRKSRC}/

do-install:
	${INSTALL_PROGRAM} ${RELEASE_DIR}/rrdpit ${PREFIX}/bin/

.include "crates.inc"

.include <bsd.port.mk>
