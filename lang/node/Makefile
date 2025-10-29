ONLY_FOR_ARCHS =	amd64 aarch64 i386 powerpc64 riscv64
DPB_PROPERTIES =	parallel

USE_WXNEEDED =		Yes

COMMENT = JavaScript runtime built on Chrome's V8 JavaScript engine

NODE_VERSION =		v22.21.1
DISTFILES =		${DISTNAME}-headers.tar.gz \
			${DISTNAME}.tar.xz
DIST_TUPLE =		github qbit node-pledge 1.1.3 \
			deps/npm/node_modules/node-pledge
DISTNAME =		node-${NODE_VERSION}
PKGNAME =		${DISTNAME:S/v//g}
EPOCH =			0

CATEGORIES =		lang devel

HOMEPAGE =		https://nodejs.org/
MAINTAINER =		Volker Schlecht <openbsd-ports@schlecht.dev>

# MIT
PERMIT_PACKAGE =	Yes

SITES =			${HOMEPAGE}dist/${NODE_VERSION}/

MODULES =		lang/python

WANTLIB += c execinfo m pthread ${COMPILER_LIBCXX}
WANTLIB += z brotlienc brotlidec
WANTLIB += icudata icui18n icuuc cares nghttp2 nghttp3 uv
WANTLIB += lib/${EOPENSSL_VSN}/ssl lib/${EOPENSSL_VSN}/crypto

COMPILER =		base-clang ports-gcc

USE_GMAKE =		Yes

BUILD_DEPENDS =		sysutils/flock

RUN_DEPENDS =		devel/gmake \
			sysutils/flock

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	configure

CONFIGURE_ARGS =	--prefix=${PREFIX} \
			--with-intl=system-icu \
			--shared-brotli \
			--shared-cares \
			--shared-libuv \
			--shared-nghttp2 \
			--shared-nghttp3 \
			--shared-zlib \
			--shared-openssl \
			--shared-openssl-libpath=${EOPENSSL_LIB} \
			--shared-openssl-includes=${EOPENSSL_INC}

CFLAGS +=		-idirafter ${LOCALBASE}/include

SUBST_VARS +=		DISTNAME
SUBST_VARS +=		WRKDIST
SUBST_VARS +=		NODE_VERSION
SUBST_VARS +=		EOPENSSL_LIB

# uses a wide range of OpenSSL API and only really supports boring/openssl
LIB_DEPENDS +=		archivers/brotli \
			devel/libuv>=1.51.0p0 \
			net/libcares \
			security/openssl/${OPENSSL_VSN} \
			textproc/icu4c \
			www/nghttp2 \
			www/nghttp3

OPENSSL_VSN =		3.5
EOPENSSL_VSN =		eopenssl${OPENSSL_VSN:C/\.//}
EOPENSSL_LIB =		${LOCALBASE}/lib/${EOPENSSL_VSN}
EOPENSSL_INC =		${LOCALBASE}/include/${EOPENSSL_VSN}

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# Run default tests, without linters or building the docs.
TEST_TARGET =		test-only
TEST_ENV =		${MAKE_ENV} HOME=${WRKSRC} CI=true

# Skip test-snapshot-reproducible.
# It fails and is too verbose (pollutes log with binary diff).
TEST_ENV+=		CI_SKIP_TESTS=test-snapshot-reproducible

pre-configure:
	${SUBST_CMD} ${WRKDIST}/common.gypi \
		${WRKDIST}/deps/npm/node_modules/node-gyp/lib/install.js \
		${WRKDIST}/src/env.cc \
		${WRKDIST}/tools/test.py

post-install:
	${MODPY_COMPILEALL} \
		${PREFIX}/lib/node_modules/npm/node_modules/node-gyp
	${INSTALL_DATA_DIR} ${PREFIX}/share/node
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTNAME}-headers.tar.gz \
		${PREFIX}/share/node/${DISTNAME}-headers.tar.gz
	cd ${PREFIX}/lib/node_modules/npm/node_modules && for x in *; do \
		mv $$x ../..; \
		ln -s ../../$$x $$x; \
	done

pre-test:
	@ln -sf ${LOCALBASE}/bin/${EOPENSSL_VSN} ${WRKDIR}/bin/openssl

# Includes a lot of networking tests that will fail when running as _pbuild
do-test:
	cd ${WRKSRC} && \
	ulimit -n $$(ulimit -Hn) && \
	ulimit -d $$(ulimit -Hd) && \
	${SETENV} ${TEST_ENV} ${MAKE_PROGRAM} --ignore-errors ${TEST_TARGET}

.include <bsd.port.mk>
