# $OpenBSD: Makefile,v 1.18 2011/09/16 12:00:07 espie Exp $

# XXX:
# - Needs __ARM_NR_cacheflush (or the like) to work on arm-based ports.
# - Needs bundled libcares as arpa/nameser.h does not include ns_t_a.

ONLY_FOR_ARCHS=	amd64 i386

COMMENT=	V8 JavaScript for clients and servers

DISTNAME=	node-v0.4.9
REVISION=	0
PKGNAME=	${DISTNAME:S/v//g}

CATEGORIES=	www devel

HOMEPAGE=	http://nodejs.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/dist/

MODULES=	lang/python

VMEM_WARNING=	Yes

WANTLIB +=	c crypto execinfo ev kvm m pthread ssl stdc++ util

LIB_DEPENDS=	devel/libev \
		devel/libexecinfo

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--shared-libev-libpath="${LOCALBASE}/lib" \
			--shared-libev-include="${LOCALBASE}/include"

MODPY_ADJ_FILES=wscript \
		tools/node-waf \
		tools/waf-light

# These don't require complete rebuilds of the tree
REGRESS_TARGET= test-message test-simple test-pummel test-internet

SUBST_VARS+=	CFLAGS

MAKE_ENV+=	CXX=c++ CCFLAGS+="${CFLAGS}" CXXFLAGS="${CXXFLAGS}"

NO_CCACHE=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/wscript \
			${WRKSRC}/Makefile \
			${WRKSRC}/tools/wafadmin/Tools/python.py
	# Bad practice, but prevents a whole stack of patches.
	ln -sf ${LOCALBASE}/bin/python${MODPY_VERSION} ${WRKDIR}/bin/python

.include <bsd.port.mk>
