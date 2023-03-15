COMMENT =		OAuth2 authentication daemon

V =			0.2.1
DISTNAME =		pizauth-$V

CATEGORIES =		mail security

HOMEPAGE =		https://tratt.net/laurie/src/pizauth/
MASTER_SITES =		${HOMEPAGE}releases/
EXTRACT_SUFX =		.tgz

MAINTAINER =            Laurence Tratt <laurie@tratt.net>

# Apache-2.0/MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODCARGO_WANTLIB} m

BUILD_DEPENDS +=	security/rust-ring

DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}
MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

MODCARGO_RUSTFLAGS =	-C debuginfo=0

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/pizauth ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/pizauth.1 ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/pizauth.conf.5 ${PREFIX}/man/man5/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pizauth
	${INSTALL_DATA} ${WRKSRC}/pizauth.conf.example \
	  ${PREFIX}/share/examples/pizauth/pizauth.conf

.include "crates.inc"

.include <bsd.port.mk>
