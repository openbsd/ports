COMMENT =		GitHub webhooks runner daemon

V =			0.4.11
DISTNAME =		snare-$V
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://tratt.net/laurie/src/snare/
SITES =			${HOMEPAGE}releases/
EXTRACT_SUFX =		.tgz

MAINTAINER =            Laurence Tratt <laurie@tratt.net>

# Apache-2.0/MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODCARGO_WANTLIB} m

DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}
MODULES =		devel/cargo

MODCARGO_CRATES_UPDATE +=	time
MODCARGO_CRATES +=	time		0.3.36
MODCARGO_CRATES +=	time-macros	0.2.18
MODCARGO_CRATES +=	num-conv	0.1.0

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

MODCARGO_RUSTFLAGS =	-C debuginfo=0

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/snare ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/snare.1 ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/snare.conf.5 ${PREFIX}/man/man5/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/snare
	${INSTALL_DATA} ${WRKSRC}/snare.conf.example ${PREFIX}/share/examples/snare/snare.conf


.include "crates.inc"

.include <bsd.port.mk>
