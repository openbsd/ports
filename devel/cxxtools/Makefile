# $OpenBSD: Makefile,v 1.10 2014/08/21 08:04:16 armani Exp $

COMMENT=		various reusable C++-components

DISTNAME=		cxxtools-1.4.7
REVISION=		4
SHARED_LIBS +=	cxxtools             2.0      # .5.0
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
