# $OpenBSD: Makefile,v 1.2 2008/02/03 17:15:23 jasper Exp $

COMMENT=		various reusable C++-components

DISTNAME=		cxxtools-1.4.6
SHARED_LIBS +=	cxxtools             1.0      # .5.0
CATEGORIES=		devel

HOMEPAGE=		http://www.tntnet.org/cxxtools.hms

MAINTAINER=		Vijay Ramesh <vramesh2@uiuc.edu>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB= pthread

MASTER_SITES=		http://www.tntnet.org/download/

MODULES=		converters/libiconv

MODULES+=		gcc3
MODGCC3_ARCHES= 	sparc
MODGCC3_LANGS=		c++

USE_LIBTOOL=		Yes

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
