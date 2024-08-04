COMMENT=		YubiKey plugin for age clients

GH_ACCOUNT=		str4d
GH_PROJECT=		age-plugin-yubikey
GH_TAGNAME=		v0.5.0

CATEGORIES=		security

MAINTAINER=		Volker Schlecht <openbsd-ports@schlecht.dev>

# MIT or Apache 2.0
PERMIT_PACKAGE=		Yes
WANTLIB+=		${MODCARGO_WANTLIB} m pcsclite

MODULES=		devel/cargo

LIB_DEPENDS+=		security/pcsc-lite

CONFIGURE_STYLE=	cargo

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/age-plugin-yubikey
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/age-plugin-yubikey

.include "crates.inc"
.include <bsd.port.mk>
