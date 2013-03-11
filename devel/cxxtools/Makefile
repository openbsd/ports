# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:02 espie Exp $

COMMENT=		various reusable C++-components

DISTNAME=		cxxtools-1.4.7
REVISION=		2
SHARED_LIBS +=	cxxtools             2.0      # .5.0
CATEGORIES=		devel

HOMEPAGE=		http://www.tntnet.org/cxxtools.hms

MAINTAINER=		Vijay Ramesh <vramesh2@uiuc.edu>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		pthread m stdc++

MASTER_SITES=		http://www.tntnet.org/download/

MODULES=		converters/libiconv

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
