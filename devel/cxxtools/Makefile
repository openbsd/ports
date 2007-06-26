# $OpenBSD: Makefile,v 1.1.1.1 2007/06/26 16:47:37 jasper Exp $

COMMENT=		various reusable C++-components

DISTNAME=		cxxtools-1.4.4
SHARED_LIBS +=	cxxtools             0.0      # .4.1
CATEGORIES=		devel

HOMEPAGE=		http://www.tntnet.org/cxxtools.hms

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

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
