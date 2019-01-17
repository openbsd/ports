# $OpenBSD: Makefile,v 1.16 2019/01/17 10:13:40 bentley Exp $

COMMENT=		asynchronous dns resolver client library and utilities
DISTNAME=		adns-1.5.1
CATEGORIES=		net devel
SHARED_LIBS=		adns	2.0
REVISION=		0

HOMEPAGE=		https://www.chiark.greenend.org.uk/~ian/adns/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MASTER_SITES=		https://www.chiark.greenend.org.uk/~ian/adns/ftp/

CONFIGURE_STYLE=	gnu dest
USE_GMAKE=		Yes
MAKE_FLAGS=		MAJOR=${LIBadns_VERSION:R} MINOR=${LIBadns_VERSION:E}

.include <bsd.port.mk>
