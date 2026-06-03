# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =		sparc64

COMMENT =		Sequoia-PGP command line tool

VERSION =		1.3.1
SITES =			https://gitlab.com/sequoia-pgp/sequoia-sq/-/archive/v${VERSION}/
DISTNAME =		sequoia-sq-v${VERSION}
PKGNAME =		${DISTNAME:S/v//}
REVISION =		2

HOMEPAGE =		https://sequoia-pgp.org/

MAINTAINER =		Volker Schlecht <openbsd-ports@schlecht.dev>

CATEGORIES =		security

# LGPL 2.0 or later
PERMIT_PACKAGE =	Yes

MODULES =		devel/cargo \
			lang/clang

CONFIGURE_STYLE =	cargo

BUILD_DEPENDS =		devel/capnproto

LIB_DEPENDS =		archivers/bzip2 \
			databases/sqlite3 \
			devel/gmp \
			security/libnettle

MAKE_ENV =		LIBCLANG_PATH=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib \
			ASSET_OUT_DIR=${WRKSRC}/assets

MODCARGO_CRATES_UPDATE =	bindgen nettle-sys rustc-hash

MODCARGO_RUSTFLAGS +=	-C link-arg="-Wl,-rpath,${LOCALBASE}/lib/nettle3"
MODCARGO_RUSTFLAGS +=	-L native=${LOCALBASE}/lib/nettle3
MAKE_ENV +=		PKG_CONFIG_PATH=${LOCALBASE}/lib/nettle3/pkgconfig

WANTLIB += ${MODCARGO_WANTLIB} bz2 crypto gmp m sqlite3 ssl
WANTLIB += lib/nettle3/hogweed lib/nettle3/nettle

.include "crates.inc"

post-install:
	cd ${PREFIX}/share; ${INSTALL_DATA_DIR} \
		bash-completion/completions \
		elvish/lib \
		fish/vendor_completions.d
	${INSTALL_DATA} ${WRKSRC}/assets/shell-completions/sq.fish \
		${PREFIX}/share/fish/vendor_completions.d/
	${INSTALL_DATA} ${WRKSRC}/assets/shell-completions/sq.bash \
		${PREFIX}/share/bash-completion/completions/
	${INSTALL_DATA} ${WRKSRC}/assets/shell-completions/sq.elv \
		${PREFIX}/share/elvish/lib/
	${INSTALL_MAN} ${WRKSRC}/assets/man-pages/sq-* ${PREFIX}/man/man1/

.include <bsd.port.mk>
