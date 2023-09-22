# ring-v0.16.20 does not support those archs
NOT_FOR_ARCHS =	powerpc64 riscv64 sparc64

COMMENT =	RPKI "relying party" software

GH_ACCOUNT =	NLnetLabs
GH_PROJECT =	routinator
GH_TAGNAME =	v0.13.0

UI =		0.3.4
SITES.ui =	https://github.com/NLnetLabs/routinator-ui/releases/download/v${UI}/
DISTFILES.ui =	routinator-ui-${UI}{routinator-ui-build}.tar.gz

# The routinator-ui crate expects its Vue.js parts to be in ../dist
EXTRACT_CASES +=	routinator-ui-*.tar.gz) \
	mkdir -p ${MODCARGO_VENDOR_DIR}/dist; \
	${GZIP_CMD} -d <${FULLDISTDIR}/$$archive | \
	${TAR} -C ${MODCARGO_VENDOR_DIR}/dist -xf - -- ${EXTRACT_FILES};;

CATEGORIES =		net

# code: BSD
# ARIN TAL: ridiculous license. at runtime the file is not easily available
# without agreeing to it, which seems to comply with what ARIN want, but it's
# in the clear in the distfile (see requirements in "machine readable
# format distribution"
PERMIT_PACKAGE =	Yes
PERMIT_DISTFILES =	includes bundled ARIN TAL which requires agreement with https://www.arin.net/resources/manage/rpki/rpa.pdf

WANTLIB += c c++abi m pthread

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

BUILD_DEPENDS =		security/rust-ring

RUN_DEPENDS =		net/rsync
SEPARATE_BUILD =	Yes

FIX_EXTRACT_PERMISSIONS = Yes

.include "crates.inc"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/routinator
	${INSTALL_DATA} ${WRKSRC}/doc/routinator.1 ${PREFIX}/man/man1/
	${SUBST_DATA} ${WRKSRC}/etc/routinator.conf.system-service \
	    ${PREFIX}/share/examples/routinator/routinator.conf.system-service
	${INSTALL_DATA} ${WRKSRC}/etc/routinator.conf.example \
	    ${PREFIX}/share/examples/routinator/routinator.conf.example
	rm -rf ${PREFIX}/share/routinator/tals

.include <bsd.port.mk>
