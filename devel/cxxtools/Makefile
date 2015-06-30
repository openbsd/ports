# $OpenBSD: Makefile,v 1.13 2015/06/30 15:49:00 sthen Exp $

COMMENT=		various reusable C++-components

DISTNAME=		cxxtools-2.2.1
SHARED_LIBS +=	cxxtools             3.0      # .9.0
SHARED_LIBS +=  cxxtools-bin              0.0 # 9.0
SHARED_LIBS +=  cxxtools-http             0.0 # 9.0
SHARED_LIBS +=  cxxtools-json             0.0 # 9.0
SHARED_LIBS +=  cxxtools-unit             0.0 # 9.0
SHARED_LIBS +=  cxxtools-xmlrpc           0.0 # 9.0
CATEGORIES=		devel

HOMEPAGE=		http://www.tntnet.org/cxxtools.html

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		pthread m stdc++

MASTER_SITES=		http://www.tntnet.org/download/

MODULES=		converters/libiconv

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS=		CXXT_ARCH
.include <bsd.port.arch.mk>
.if ${ARCH:Mi386}
CXXT_ARCH=	x86
.elif ${ARCH:Mamd64}
CXXT_ARCH=	x86_64
.elif ${ARCH:Mppc}
CXXT_ARCH=	ppc
.elif ${ARCH:Msparc64}
CXXT_ARCH=	sparc64
.elif ${ARCH:Msparc}
CXXT_ARCH=	sparc32
.elif ${ARCH:Marm}
CXXT_ARCH=	arm
.elif ${ARCH:Mmips}
CXXT_ARCH=	mips
.endif

.include <bsd.port.mk>
