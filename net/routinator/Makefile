# ring-v0.16.20 does not support those archs
NOT_FOR_ARCHS =		powerpc64 riscv64 sparc64

COMMENT =		RPKI "relying party" software

GH_ACCOUNT =		NLnetLabs
GH_PROJECT =		routinator
GH_TAGNAME =		v0.11.2

ROUTINATOR_UI_URL =	https://github.com/NLnetLabs/routinator-ui/releases/download/
ROUTINATOR_UI_VERSION =	0.3.4

MASTER_SITES0 =	${ROUTINATOR_UI_URL}/v${ROUTINATOR_UI_VERSION}/
DISTFILES +=	routinator-ui-${ROUTINATOR_UI_VERSION}{routinator-ui-build}.tar.gz:0

SUBST_VARS +=		ROUTINATOR_UI_VERSION
SUBST_VARS +=		DISTDIR

CATEGORIES =		net

# code: BSD
# ARIN TAL: ridiculous license. at runtime the file is not easily available
# without agreeing to it, which seems to comply with what ARIN want, but it's
# in the clear in the distfile
PERMIT_PACKAGE =	Yes
PERMIT_DISTFILES =	includes bundled ARIN TAL which requires agreement with https://www.arin.net/resources/manage/rpki/rpa.pdf

WANTLIB += c c++abi m pthread

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

RUN_DEPENDS =		net/rsync
SEPARATE_BUILD =	Yes

FIX_EXTRACT_PERMISSIONS = Yes
DISTFILES +=		${DISTNAME}{${GH_TAGNAME}}${EXTRACT_SUFX}

.include "crates.inc"

post-patch:
	${SUBST_CMD} ${WRKSRC}/modcargo-crates/routinator-ui-${ROUTINATOR_UI_VERSION}/build.rs

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/routinator
	${INSTALL_DATA} ${WRKSRC}/doc/routinator.1 ${PREFIX}/man/man1/
	${SUBST_DATA} ${WRKSRC}/etc/routinator.conf.system-service \
	    ${PREFIX}/share/examples/routinator/routinator.conf.system-service
	${INSTALL_DATA} ${WRKSRC}/etc/routinator.conf.example \
	    ${PREFIX}/share/examples/routinator/routinator.conf.example
	rm -rf ${PREFIX}/share/routinator/tals

.include <bsd.port.mk>
