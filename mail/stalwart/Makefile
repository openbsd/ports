COMMENT =		JMAP/IMAP/SMTP server

# stalwart-jmap uses rocksdb, which is 64-bit only
# the other ports aren't especially useful without stalwart-jmap
ONLY_FOR_ARCHS =	${LP64_ARCHS}

GH_ACCOUNT =		stalwartlabs
GH_PROJECT =		stalwart
CATEGORIES =		mail
# AGPLv3
PERMIT_PACKAGE =	Yes
GH_TAGNAME =		v0.15.2
PKGNAME =		stalwart-mail-${GH_TAGNAME:S/v//}

HOMEPAGE =	https://stalw.art/
# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

MODULES =		devel/cargo lang/clang

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes
DPB_PROPERTIES =	parallel

.include "crates.inc"

# otherwise blows because rocksdb wants to statically links against libz ?
MODCARGO_CRATES_KEEP +=	libz-sys
MODCARGO_CRATES_KEEP +=	zstd-sys
MODCARGO_CRATES_KEEP +=	libsqlite3-sys
MODCARGO_CRATES_KEEP +=	foundationdb-sys

# for rocksdb bindings
MODCARGO_ENV=	LIBCLANG_PATH=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib
MAKE_ENV +=	DEP_BZIP2_INCLUDE=${LOCALBASE}/include

BUILD_DEPENDS+=	devel/protobuf #opentelemetry-proto calls protoc
LIB_DEPENDS +=	archivers/bzip2

WANTLIB +=	${COMPILER_LIBCXX} bz2 c m

MODCARGO_INSTALL_TARGET_PATHS =	crates/cli crates/main

# tests fail to build because it doesnt build/find libfdb_c.so from foundationdb-sys crate

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/stalwart/
	${INSTALL_DATA} ${WRKSRC}/resources/config/config.toml ${PREFIX}/share/examples/stalwart/
	cd ${PREFIX} && ln -sf ${TRUEPREFIX}/bin/stalwart bin/stalwart-mail

.include <bsd.port.mk>
