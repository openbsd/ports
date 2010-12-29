# $OpenBSD: Makefile,v 1.4 2010/12/29 17:49:41 jasper Exp $

# XXX:
# - Build fails on some amd64 machines?

ONLY_FOR_ARCHS=	amd64 i386

COMMENT=	V8 JavaScript for clients and servers

DISTNAME=	node-v0.2.5
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

WANTLIB +=	c crypto execinfo ev kvm m pthread ssl stdc++ z

LIB_DEPENDS=	devel/libev \
		devel/libexecinfo

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--shared-libev-libpath="${LOCALBASE}/lib" \
			--shared-libev-include="${LOCALBASE}/include"

MODPY_ADJ_FILES=wscript \
		bin/node-waf \
		tools/waf-light

NO_REGRESS=	Yes

SUBST_VARS+=	CFLAGS

MAKE_ENV+=	CXX=c++ CCFLAGS+="${CFLAGS}" CXXFLAGS="${CXXFLAGS}"

post-extract:
	rm -f ${WRKSRC}/deps/v8/src/SConscript.orig \
		${WRKSRC}/deps/v8/src/platform.h.orig

pre-configure:
	${SUBST_CMD} ${WRKSRC}/wscript \
			${WRKSRC}/tools/wafadmin/Tools/python.py
	# Bad practice, but prevents a whole stack of patches.
	ln -sf ${LOCALBASE}/bin/python${MODPY_VERSION} ${WRKDIR}/bin/python

.include <bsd.port.mk>
