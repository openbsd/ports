COMMENT =		DNS query tool
WRKDIST =		${WRKDIR}/delan-nonymous-f13a461049f4
V =			0.4.1
DISTNAME =		bore-${V}
CATEGORIES =		net sysutils
MAINTAINER =		Delan Azabani <delan@azabani.com>

# ISC
PERMIT_PACKAGE =	Yes

# uses pledge(2)
WANTLIB += c c++abi pthread

MASTER_SITES =		https://bitbucket.org/delan/nonymous/get/
DISTFILES =		${DISTNAME}${EXTRACT_SUFX}
PATCHORIG =		.openbsd.orig

MODULES =		devel/cargo
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	cargo
MODCARGO_BUILD_ARGS =	-p bore

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/bore ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/bore/doc/bore.1 ${PREFIX}/man/man1/

.include "crates.inc"

.include <bsd.port.mk>
