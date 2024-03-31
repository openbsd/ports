COMMENT =		JMAP/IMAP/SMTP server

# ring-v0.16.20 does not support those archs
NOT_FOR_ARCHS =		powerpc64 riscv64 sparc64

# stalwart-jmap uses rocksdb, which is 64-bit only
# the other ports aren't especially useful without stalwart-jmap
ONLY_FOR_ARCHS =	${LP64_ARCHS}

GH_ACCOUNT =		stalwartlabs
GH_PROJECT =		mail-server
CATEGORIES =		mail
# AGPLv3
PERMIT_PACKAGE =	Yes
GH_TAGNAME =		v0.6.0
PKGNAME =		stalwart-mail-${GH_TAGNAME:S/v//}

HOMEPAGE =	https://stalw.art/
# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

MODULES =		devel/cargo lang/clang

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

.include "crates.inc"

# otherwise blows because rocksdb wants to statically links against libz ?
MODCARGO_CRATES_KEEP +=	libz-sys
MODCARGO_CRATES_KEEP +=	libsqlite3-sys

# for rocksdb bindings
MODCARGO_ENV=	LIBCLANG_PATH=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib
MAKE_ENV +=	DEP_BZIP2_INCLUDE=${LOCALBASE}/include

#librocksdb-sys looks for libclang.so
BUILD_DEPENDS=	devel/llvm/16
BUILD_DEPENDS+=	security/rust-ring
BUILD_DEPENDS+=	devel/protobuf #opentelemetry-proto calls protoc
LIB_DEPENDS +=	archivers/zstd \
		archivers/bzip2

WANTLIB +=	${COMPILER_LIBCXX} bz2 c m zstd

MODCARGO_INSTALL_TARGET_PATHS =	crates/cli crates/main

post-install:
# cf      tests/resources/scripts/create_test_env.sh for the replacements
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/stalwart/{common,directory,imap,jmap,smtp,spamfilter,store}
	cd ${WRKSRC}/resources/config && find . -name '*toml' | while read f ; do \
		echo $$f ; \
		sed -i \
			-e 's#%{BASE_PATH}%/etc/#${SYSCONFDIR}/stalwart/#' \
			-e 's#%{BASE_PATH}%#/var/stalwart/#' \
			-e 's/\[::\]/0.0.0.0/' $$f ; \
		${SUBST_CMD} -c $$f ${PREFIX}/share/examples/stalwart/$$f ; \
	done
	cp -r ${WRKSRC}/resources/config/spamfilter/* ${PREFIX}/share/examples/stalwart/spamfilter/

.include <bsd.port.mk>
