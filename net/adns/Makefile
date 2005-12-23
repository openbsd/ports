# $OpenBSD: Makefile,v 1.6 2005/12/23 16:36:20 todd Exp $

COMMENT=		"asynchronous dns resolver client library and utilities"
DISTNAME=		adns-1.1
PKGNAME=		$(DISTNAME)p0
CATEGORIES=		net devel
SHARED_LIBS=		adns	1.0

HOMEPAGE=		http://www.chiark.greenend.org.uk/~ian/adns/

MAINTAINER=		Michael Coulter <mjc@openbsd.org>

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
FAKE_FLAGS=		MAJOR=${LIBadns_MAJOR} MINOR=${LIBadns_VERSION:E}

LIBadns_MAJOR=${LIBadns_VERSION:R}
SUBST_VARS+=		LIBadns_MAJOR

REGRESS_TARGET=		check

.include <bsd.port.mk>
