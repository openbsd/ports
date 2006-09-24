# $OpenBSD: Makefile,v 1.7 2006/09/24 19:02:46 grange Exp $

COMMENT=		"OBEX protocol implementation"
DISTNAME=		openobex-1.0.1
PKGNAME=		${DISTNAME}p2
SHARED_LIBS=		openobex 1.0

CATEGORIES=		comms
HOMEPAGE=		http://openobex.triq.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=openobex/}

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
