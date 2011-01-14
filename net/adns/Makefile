# $OpenBSD: Makefile,v 1.10 2011/01/14 22:50:56 jasper Exp $

COMMENT=		asynchronous dns resolver client library and utilities
DISTNAME=		adns-1.4
REVISION=		0
CATEGORIES=		net devel
SHARED_LIBS=		adns	1.1

HOMEPAGE=		http://www.chiark.greenend.org.uk/~ian/adns/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		${HOMEPAGE}/ftp/

CONFIGURE_STYLE=	gnu dest
USE_GMAKE=		Yes
MAKE_FLAGS=		MAJOR=${LIBadns_MAJOR} MINOR=${LIBadns_VERSION:E}

LIBadns_MAJOR=${LIBadns_VERSION:R}
SUBST_VARS+=		LIBadns_MAJOR

REGRESS_TARGET=		check

.include <bsd.port.mk>
