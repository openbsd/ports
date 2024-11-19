COMMENT =		cargo helper to build and install c-like libraries

V =			0.10.5
PKGNAME =		cargo-c-$V
GH_ACCOUNT =		lu-zero
GH_PROJECT =		cargo-c
GH_TAGNAME =		v$V

SITES.gh =		https://github.com/lu-zero/cargo-c/releases/download/v$V/
DISTFILES.gh +=		cargo-c-${V}.Cargo.lock{Cargo.lock}
EXTRACT_CASES =		*.lock)	cp ${FULLDISTDIR}/$$archive ${WRKSRC}/Cargo.lock;;

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODCARGO_WANTLIB} crypto curl git2 m ssh2 ssl z

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

LIB_DEPENDS =		devel/libgit2/libgit2 \
			net/curl \
			security/libssh2

MODCARGO_CRATES_KEEP +=	libsqlite3-sys

.include "crates.inc"

.include <bsd.port.mk>
