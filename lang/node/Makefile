ONLY_FOR_ARCHS =	amd64 aarch64 i386 powerpc64 riscv64
DPB_PROPERTIES =	parallel

USE_WXNEEDED =		Yes

COMMENT = JavaScript runtime built on Chrome's V8 JavaScript engine

NODE_VERSION =		v22.13.1
PLEDGE_VER =		1.1.3
REVISION =		0
DISTFILES =		${DISTNAME}-headers.tar.gz \
			${DISTNAME}.tar.xz
DISTFILES.pledge =	node-pledge-{}${PLEDGE_VER}.tar.gz

DISTNAME =		node-${NODE_VERSION}
PKGNAME =		${DISTNAME:S/v//g}
EPOCH =			0

SITES.pledge =		https://github.com/qbit/node-pledge/archive/

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

TEST_TARGET =		check
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
			devel/libuv \
			net/libcares \
			security/openssl/${OPENSSL_VSN} \
			textproc/icu4c \
			www/nghttp2 \
			www/nghttp3

OPENSSL_VSN =		3.3
EOPENSSL_VSN =		eopenssl${OPENSSL_VSN:C/\.//}
EOPENSSL_LIB =		${LOCALBASE}/lib/${EOPENSSL_VSN}
EOPENSSL_INC =		${LOCALBASE}/include/${EOPENSSL_VSN}

DEBUG_PACKAGES =	${BUILD_PACKAGES}

post-extract:
	mv ${WRKDIR}/node-pledge-${PLEDGE_VER} \
		${WRKSRC}/deps/npm/node_modules/node-pledge

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

# Includes a lot of networking tests that will fail when running as _pbuild
do-test:
	cd ${WRKSRC} && \
	export HOME=${WRKSRC} && \
	ulimit -n $$(ulimit -Hn) && \
	ulimit -d $$(ulimit -Hd) && \
	${MAKE_PROGRAM} ${TEST_TARGET}

.include <bsd.port.mk>
