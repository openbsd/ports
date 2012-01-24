# $OpenBSD: Makefile,v 1.25 2012/01/24 10:03:55 sthen Exp $

# XXX:
# - Needs __ARM_NR_cacheflush (or the like) to work on arm-based ports.
# - Needs bundled libcares as arpa/nameser.h does not include ns_t_a.

ONLY_FOR_ARCHS=	amd64 i386

COMMENT=	V8 JavaScript for clients and servers

NODE_VERSION=	v0.6.8
DISTNAME=	node-${NODE_VERSION}
PKGNAME=	${DISTNAME:S/v//g}

CATEGORIES=	www devel

HOMEPAGE=	http://nodejs.org/

MAINTAINER=	Aaron Bieber <deftly@gmail.com>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}dist/${NODE_VERSION}/

MODULES=	lang/python

VMEM_WARNING=	Yes

WANTLIB +=	c crypto execinfo kvm m pthread ssl stdc++ util z

LIB_DEPENDS=	devel/libexecinfo

USE_GMAKE=	Yes

MODPY_ADJ_FILES=wscript \
		tools/node-waf \
		tools/waf-light

REGRESS_TARGET= test
CONFIGURE_STYLE= simple

SUBST_VARS+=	CFLAGS

MAKE_ENV+=	CXX=c++ CCFLAGS+="${CFLAGS}" CXXFLAGS="${CXXFLAGS}"

NO_CCACHE=	Yes

pre-configure:
	@# Bad practice, but prevents a whole stack of patches.
	ln -sf ${LOCALBASE}/bin/python${MODPY_VERSION} ${WRKDIR}/bin/python
	${SUBST_CMD} ${WRKDIST}/lib/module.js

.include <bsd.port.mk>
