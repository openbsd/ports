# $OpenBSD: Makefile,v 1.83 2020/04/04 16:42:57 abieber Exp $

# XXX:
# - Needs __ARM_NR_cacheflush (or the like) to work on arm-based ports.
# - Needs bundled libcares as arpa/nameser.h does not include ns_t_a.

ONLY_FOR_ARCHS =	amd64 aarch64 i386
DPB_PROPERTIES =	parallel

USE_WXNEEDED =		Yes

COMMENT =		V8 JavaScript for clients and servers

NODE_VERSION =		v12.16.1
PLEDGE_VER =		1.1.2
DISTFILES =		node-pledge-{}${PLEDGE_VER}.tar.gz:0 \
			${DISTNAME}-headers.tar.gz \
			${DISTNAME}.tar.gz

DISTNAME =		node-${NODE_VERSION}
PKGNAME =		${DISTNAME:S/v//g}

MASTER_SITES0 =		https://github.com/qbit/node-pledge/archive/

CATEGORIES =		lang devel

HOMEPAGE =		http://nodejs.org/

# MIT
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${HOMEPAGE}dist/${NODE_VERSION}/

MODULES =		lang/python

WANTLIB += c execinfo kvm m pthread util ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		devel/libexecinfo

USE_GMAKE =		Yes

BUILD_DEPENDS =		sysutils/flock

RUN_DEPENDS =		devel/gmake \
			sysutils/flock

TEST_TARGET =		test
CONFIGURE_STYLE =	simple

# libpath and includes aren't picked up, but I added them here as a note.
# The patch for node.gyp is where they are actually being set.
CONFIGURE_ARGS =	--prefix=${PREFIX}

.if "${MACHINE_ARCH}" ==	"aarch64"
CONFIGURE_ARGS +=	--openssl-no-asm
.endif

SUBST_VARS += 		DISTNAME
SUBST_VARS += 		DISTFILES
SUBST_VARS += 		EXTRACT_SUFX
SUBST_VARS += 		LOCALBASE
SUBST_VARS += 		PREFIX
SUBST_VARS +=		WRKDIST
SUBST_VARS +=		MAKE_PROGRAM
SUBST_VARS +=		NODE_VERSION

MAKE_ENV +=		V=1 CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

do-extract:
	mkdir ${WRKSRC}; \
	tar -C ${WRKDIR} -zxf ${FULLDISTDIR}/${DISTNAME}.tar.gz && \
	tar -C ${WRKSRC}/deps/npm/node_modules/ -zxf \
		${FULLDISTDIR}/node-pledge-${PLEDGE_VER}.tar.gz && \
	mv ${WRKSRC}/deps/npm/node_modules/node-pledge-${PLEDGE_VER} \
		${WRKSRC}/deps/npm/node_modules/node-pledge

pre-configure:
	@# Bad practice, but prevents a whole stack of patches.
	ln -sf ${LOCALBASE}/bin/python${MODPY_VERSION} ${WRKDIR}/bin/python
	${SUBST_CMD} ${WRKDIST}/lib/module.js \
		${WRKDIST}/deps/npm/bin/node-gyp-bin/node-gyp \
		${WRKDIST}/deps/npm/node_modules/node-gyp/lib/find-python.js \
		${WRKDIST}/deps/npm/node_modules/node-gyp/lib/install.js \
		${WRKDIST}/deps/openssl/config/generate_gypi.pl \
		${WRKDIST}/node.gyp \
		${WRKDIST}/common.gypi \
		${WRKDIST}/tools/test.py
	cd ${WRKDIST}/deps/openssl/config && \
		${MAKE_PROGRAM} ASM_ARCHS=BSD-x86-elf NO_ASM_ARCHS=

post-configure:
	sed -i 's/-ldl //' ${WRKSRC}/out/deps/openssl/openssl.target.mk
	sed -i 's/-ldl //' ${WRKSRC}/out/deps/openssl/openssl-cli.target.mk

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/lib/node_modules/npm/node_modules/node-gyp/gyp
	${INSTALL_DATA_DIR} ${PREFIX}/share/node
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTNAME}-headers.tar.gz \
		${PREFIX}/share/node/${DISTNAME}-headers.tar.gz
	ln -s ${TRUEPREFIX}/lib/node_modules/npm/bin/node-gyp-bin/node-gyp \
		${PREFIX}/bin/node-gyp;
	cd ${PREFIX}/lib/node_modules/npm/node_modules && for x in *; do \
		mv $$x ../..; \
		ln -s ../../$$x $$x; \
	done

do-test:
	cd ${WRKSRC} && \
	ulimit -n $$(ulimit -Hn) && \
	ulimit -d $$(ulimit -Hd) && \
	${MAKE_PROGRAM} test


.include <bsd.port.mk>
