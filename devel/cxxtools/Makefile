# $OpenBSD: Makefile,v 1.12 2015/06/27 07:45:36 jasper Exp $

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

.include <bsd.port.mk>
