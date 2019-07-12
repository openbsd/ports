# $OpenBSD: Makefile,v 1.17 2019/07/12 20:47:58 sthen Exp $

COMMENT=		asynchronous dns resolver client library and utilities
DISTNAME=		adns-1.5.1
CATEGORIES=		net devel
SHARED_LIBS=		adns	2.0
REVISION=		0

HOMEPAGE=		https://www.chiark.greenend.org.uk/~ian/adns/

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		c

MASTER_SITES=		https://www.chiark.greenend.org.uk/~ian/adns/ftp/

CONFIGURE_STYLE=	gnu dest
USE_GMAKE=		Yes
MAKE_FLAGS=		MAJOR=${LIBadns_VERSION:R} MINOR=${LIBadns_VERSION:E}

.include <bsd.port.mk>
