# $OpenBSD: Makefile,v 1.14 2017/02/06 09:01:28 jca Exp $

COMMENT=		asynchronous dns resolver client library and utilities
DISTNAME=		adns-1.5.0
CATEGORIES=		net devel
SHARED_LIBS=		adns	2.0

HOMEPAGE=		http://www.chiark.greenend.org.uk/~ian/adns/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MASTER_SITES=		${HOMEPAGE}/ftp/

CONFIGURE_STYLE=	gnu dest
USE_GMAKE=		Yes
MAKE_FLAGS=		MAJOR=${LIBadns_VERSION:R} MINOR=${LIBadns_VERSION:E}

.include <bsd.port.mk>
