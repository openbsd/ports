# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =		sparc64

COMMENT =		compiler cache for C/C++/Rust

GH_ACCOUNT =		mozilla
GH_PROJECT =		sccache
GH_TAGNAME =		v0.8.1
REVISION =		0

CATEGORIES =		devel

MAINTAINER =		Caspar Schutijser <caspar@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		crypto m ssl zstd ${MODCARGO_WANTLIB}

MODULES =		devel/cargo

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	cargo

LIB_DEPENDS +=		archivers/zstd
MODCARGO_RUSTFLAGS +=	-L${LOCALBASE}/lib

DOCDIR =		${PREFIX}/share/doc/sccache

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/*.md ${DOCDIR}/

.include "crates.inc"

.include <bsd.port.mk>
