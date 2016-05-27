# $OpenBSD: Makefile,v 1.47 2016/05/27 23:11:53 abieber Exp $

# XXX:
# - Needs __ARM_NR_cacheflush (or the like) to work on arm-based ports.
# - Needs bundled libcares as arpa/nameser.h does not include ns_t_a.

ONLY_FOR_ARCHS=	amd64 i386 powerpc

COMMENT=	V8 JavaScript for clients and servers

NODE_VERSION=	v4.4.5

PLEDGE_VER=	1.1.0
DISTFILES=	node-pledge-{}${PLEDGE_VER}.tar.gz:0 ${DISTNAME}.tar.gz

DISTNAME=	node-${NODE_VERSION}
PKGNAME=	${DISTNAME:S/v//g}

MASTER_SITES0=	https://github.com/qbit/node-pledge/archive/

CATEGORIES=	lang devel

HOMEPAGE=	http://nodejs.org/

MAINTAINER=	Aaron Bieber <abieber@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}dist/${NODE_VERSION}/

MODULES=	gcc4 \
		lang/python

MODGCC4_LANGS =	c c++
MODGCC4_ARCHS =	*

WANTLIB += c execinfo lib/eopenssl/crypto lib/eopenssl/ssl kvm m pthread
WANTLIB += util z

LIB_DEPENDS=	devel/libexecinfo \
		security/openssl

USE_GMAKE=	Yes

BUILD_DEPENDS=	sysutils/flock

RUN_DEPENDS=	devel/gmake \
		lang/gcc/${MODGCC4_VERSION},-c++ \
		sysutils/flock

TEST_TARGET=		test
CONFIGURE_STYLE=	simple

# libpath and includes aren't picked up, but I added them here as a note.
# The patch for node.gyp is where they are actually being set.
CONFIGURE_ARGS=	--prefix=${PREFIX} \
		--shared-openssl \
		--shared-openssl-includes=${LOCALBASE}/include/eopenssl \
		--shared-openssl-libpath=${LOCALBASE}/lib/eopenssl \
		--shared-zlib

SUBST_VARS+= 	DISTNAME
SUBST_VARS+= 	DISTFILES
SUBST_VARS+= 	EXTRACT_SUFX
SUBST_VARS+= 	LOCALBASE
SUBST_VARS+= 	PREFIX
SUBST_VARS+= 	WRKDIST

MAKE_ENV+=	V=1 CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

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
