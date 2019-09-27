# $OpenBSD: Makefile,v 1.81 2019/09/27 02:07:44 abieber Exp $

# XXX:
# - Needs __ARM_NR_cacheflush (or the like) to work on arm-based ports.
# - Needs bundled libcares as arpa/nameser.h does not include ns_t_a.

ONLY_FOR_ARCHS =	amd64 aarch64 i386
DPB_PROPERTIES =	parallel

USE_WXNEEDED =		Yes

COMMENT =		V8 JavaScript for clients and servers

NODE_VERSION =		v10.16.3
PLEDGE_VER =		1.1.0
DISTFILES =		node-pledge-{}${PLEDGE_VER}.tar.gz:0 ${DISTNAME}.tar.gz

DISTNAME =		node-${NODE_VERSION}
PKGNAME =		${DISTNAME:S/v//g}

MASTER_SITES0 =		https://github.com/qbit/node-pledge/archive/

CATEGORIES =		lang devel

HOMEPAGE =		http://nodejs.org/

MAINTAINER =		Aaron Bieber <abieber@openbsd.org>

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
		${WRKDIST}/deps/npm/node_modules/node-gyp/lib/configure.js \
		${WRKDIST}/deps/npm/node_modules/node-gyp/lib/install.js \
		${WRKDIST}/node.gyp \
		${WRKDIST}/common.gypi \
		${WRKDIST}/tools/test.py
	cd ${WRKDIST}/deps/openssl/config && \
		${MAKE_PROGRAM} ARCHS=BSD-x86-elf

post-configure:
	sed -i 's/-ldl //' ${WRKSRC}/out/deps/openssl/openssl.target.mk
	sed -i 's/-ldl //' ${WRKSRC}/out/deps/openssl/openssl-cli.target.mk

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/lib/node_modules/npm/node_modules/node-gyp/gyp
	${INSTALL_DATA_DIR} ${PREFIX}/share/node
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTNAME}.tar.gz \
		${PREFIX}/share/node/${DISTNAME}.tar.gz
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
