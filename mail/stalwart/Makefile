COMMENT =		JMAP/IMAP/SMTP server

# stalwart uses rocksdb, which is 64-bit only
ONLY_FOR_ARCHS =	${LP64_ARCHS}
# uses aws-lc-rs
USE_NOEXECONLY =	Yes

GH_ACCOUNT =		stalwartlabs
GH_PROJECT =		stalwart
CATEGORIES =		mail
# AGPLv3
PERMIT_PACKAGE =	Yes
GH_TAGNAME =		v0.16.11
PKGNAME =		stalwart-mail-${GH_TAGNAME:S/v//}

HOMEPAGE =	https://stalw.art/
# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

MODULES =		devel/cargo lang/clang

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes
DPB_PROPERTIES =	parallel

.include "crates.inc"

# for https://github.com/open-telemetry/opentelemetry-rust/pull/3457
DIST_TUPLE += github stalwartlabs opentelemetry-rust 274b4d324794280ce6f4def095a3428197a9e6e3 ../opentelemetry

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
RUN_DEPENDS =	mail/stalwart-cli

WANTLIB +=	${COMPILER_LIBCXX} bz2 c m

MODCARGO_INSTALL_TARGET_PATHS =	crates/main

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${PKGSTEM}
	${INSTALL_DATA} ${WRKSRC}/UPGRADING/v0_16.md ${PREFIX}/share/doc/${PKGSTEM}/UPGRADING_v0_16.md
	${INSTALL_DATA} ${WRKSRC}/resources/scripts/migrate_v016.py ${PREFIX}/share/doc/${PKGSTEM}/migrate_v016.py

# only used for tests but MODCARGO_TEST_TARGET doesnt use TEST_ENV
MAKE_ENV+=	STORE=RocksDb
# most test suites pass, except the last one:
# test result: FAILED. 48 passed; 10 failed; 3 ignored; 0 measured; 0 filtered out;
do-test:
	ulimit -n 1024 && ${MODCARGO_TEST_TARGET}

.include <bsd.port.mk>
