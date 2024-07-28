# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =         sparc64

COMMENT =		OAuth2 authentication daemon

V =			1.0.5
DISTNAME =		pizauth-$V

CATEGORIES =		mail security

HOMEPAGE =		https://tratt.net/laurie/src/pizauth/
SITES =			${HOMEPAGE}releases/
EXTRACT_SUFX =		.tgz

MAINTAINER =            Laurence Tratt <laurie@tratt.net>

# Apache-2.0/MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODCARGO_WANTLIB} m

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
	${INSTALL_DATA} ${WRKSRC}/examples/pizauth.conf \
	  ${PREFIX}/share/examples/pizauth/
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions
	${INSTALL_DATA} ${WRKSRC}/share/bash/completion.bash \
	  ${PREFIX}/share/bash-completion/completions/pizauth

.include "crates.inc"

.include <bsd.port.mk>
