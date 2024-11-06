# ring-v0.16.20 does not support these archs
NOT_FOR_ARCHS =	powerpc64 riscv64 sparc64

COMMENT =	RPKI Certification Authority and Publication Server

GH_ACCOUNT =	NLnetLabs
GH_PROJECT =	krill
GH_TAGNAME =	v0.14.5

HOMEPAGE =	https://nlnetlabs.nl/projects/routing/krill/
CATEGORIES =	net

# MPL 2.0
PERMIT_PACKAGE =	Yes

WANTLIB =		${MODCARGO_WANTLIB} crypto m ssl

MODULES =		devel/cargo

# disable hsm feature to sidestep cryptoki dep
MODCARGO_NO_DEFAULT_FEATURES = Yes
MODCARGO_FEATURES =	multi-user

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

BUILD_DEPENDS =		security/rust-ring

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/krill
	${INSTALL_DATA} ${WRKSRC}/defaults/* \
		${PREFIX}/share/examples/krill/
	${INSTALL_DATA} ${WRKSRC}/doc/*.1 ${PREFIX}/man/man1/

.include "crates.inc"
.include <bsd.port.mk>
