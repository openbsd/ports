# $OpenBSD: Makefile,v 1.64 2017/10/10 13:32:07 abieber Exp $

# XXX:
# - Needs __ARM_NR_cacheflush (or the like) to work on arm-based ports.
# - Needs bundled libcares as arpa/nameser.h does not include ns_t_a.

ONLY_FOR_ARCHS =	amd64 i386

USE_WXNEEDED =		Yes

COMMENT =		V8 JavaScript for clients and servers

NODE_VERSION =		v6.11.4

PLEDGE_VER =		1.1.0
DISTFILES =		node-pledge-{}${PLEDGE_VER}.tar.gz:0 ${DISTNAME}.tar.gz

DISTNAME =		node-${NODE_VERSION}
PKGNAME =		${DISTNAME:S/v//g}

MASTER_SITES0 =		https://github.com/qbit/node-pledge/archive/

CATEGORIES =		lang devel

HOMEPAGE =		http://nodejs.org/

MAINTAINER =		Aaron Bieber <abieber@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}dist/${NODE_VERSION}/

MODULES =		lang/python

WANTLIB += c execinfo kvm m pthread util z ${COMPILER_LIBCXX}

LIB_DEPENDS =		devel/libexecinfo

USE_GMAKE =		Yes

BUILD_DEPENDS =		sysutils/flock

RUN_DEPENDS =		devel/gmake \
			sysutils/flock

TEST_TARGET =		test
CONFIGURE_STYLE =	simple

# libpath and includes aren't picked up, but I added them here as a note.
# The patch for node.gyp is where they are actually being set.
CONFIGURE_ARGS =	--prefix=${PREFIX} \
			--shared-zlib

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

.include <bsd.port.mk>
