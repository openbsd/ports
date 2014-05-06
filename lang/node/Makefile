# $OpenBSD: Makefile,v 1.28 2014/05/06 03:10:08 abieber Exp $

# XXX:
# - Needs __ARM_NR_cacheflush (or the like) to work on arm-based ports.
# - Needs bundled libcares as arpa/nameser.h does not include ns_t_a.

ONLY_FOR_ARCHS=	amd64 i386

COMMENT=	V8 JavaScript for clients and servers

NODE_VERSION=	v0.10.28

DISTNAME=	node-${NODE_VERSION}
PKGNAME=	${DISTNAME:S/v//g}

CATEGORIES=	lang devel

HOMEPAGE=	http://nodejs.org/

MAINTAINER=	Aaron Bieber <abieber@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}dist/${NODE_VERSION}/

MODULES=	lang/python

WANTLIB +=	c crypto execinfo kvm m pthread ssl stdc++ util z

LIB_DEPENDS=	devel/libexecinfo

USE_GMAKE=	Yes

BUILD_DEPENDS=	devel/gyp \
		sysutils/flock

# node-gyp uses it at runtime
RUN_DEPENDS=	devel/gmake \
		devel/gyp \
		sysutils/flock

TEST_TARGET= test
CONFIGURE_STYLE= simple
CONFIGURE_ARGS= --openssl-use-sys \
		--shared-zlib

SUBST_VARS+=	CFLAGS
SUBST_VARS+= 	PREFIX
SUBST_VARS+= 	LOCALBASE
SUBST_VARS+= 	DISTFILES

MAKE_ENV+=	V=1 CXX=c++ CCFLAGS+="${CFLAGS}" CXXFLAGS="${CXXFLAGS}"

NO_CCACHE=	Yes

pre-configure:
	@# Bad practice, but prevents a whole stack of patches.
	ln -sf ${LOCALBASE}/bin/python${MODPY_VERSION} ${WRKDIR}/bin/python
	${SUBST_CMD} ${WRKDIST}/lib/module.js \
		${WRKDIST}/deps/npm/node_modules/node-gyp/lib/configure.js \
		${WRKDIST}/deps/npm/node_modules/node-gyp/lib/install.js \
		${WRKDIST}/common.gypi

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/node
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTFILES} \
		${PREFIX}/lib/node/${DISTFILES}
	ln -s ${TRUEPREFIX}/lib/node_modules/npm/bin/node-gyp-bin/node-gyp \
		${PREFIX}/bin/node-gyp;
	cd ${PREFIX}/lib/node_modules/npm/node_modules && for x in *; do \
		mv $$x ../..; \
		ln -s ../../$$x $$x; \
	done


.include <bsd.port.mk>
