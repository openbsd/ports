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
GH_TAGNAME =		v1.0.1
PKGNAME =		stalwart-mail-${GH_TAGNAME:S/v//}

HOMEPAGE =	https://stalw.art/
# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

MODULES =		devel/cargo lang/clang

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes
DPB_PROPERTIES =	parallel

.include "crates.inc"

# stalwart forks, hash taken from Cargo.lock in source url for the given crates
DIST_TUPLE += github stalwartlabs rust-rocksdb f6169ca36d74c15637f8c6396c34e82aa73d0d47 ../rust-rocksdb
DIST_TUPLE += github stalwartlabs hickory-dns f8b92b17fa6c7d09a6959672592106ca1410937b ../hickory-dns
# librocksdb-sys submodules, taken from https://github.com/stalwartlabs/rust-rocksdb/commit/f6169ca36d74c15637f8c6396c34e82aa73d0d47
DIST_TUPLE += github stalwartlabs rocksdb d2ea7067099d57c5c85bd076f2cc1ca8fb4c5d04 ../rust-rocksdb/librocksdb-sys/rocksdb
DIST_TUPLE += github google snappy 23b3286820105438c5dbb9bc22f1bb85c5812c8a ../rust-rocksdb/librocksdb-sys/snappy

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

# adapt for snappy API change until its updated in the submodule, cf https://github.com/google/snappy/issues/183
post-patch:
	sed -i -e '529s/sink/sink, {}/' ${WRKDIR}/rust-rocksdb/librocksdb-sys/rocksdb/util/compression.cc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${PKGSTEM}
	${INSTALL_DATA} ${WRKSRC}/UPGRADING/v0_16.md ${PREFIX}/share/doc/${PKGSTEM}/UPGRADING_v0_16.md
	${INSTALL_DATA} ${WRKSRC}/resources/scripts/migrate_v016.py ${PREFIX}/share/doc/${PKGSTEM}/migrate_v016.py

.include <bsd.port.mk>
