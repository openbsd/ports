# $OpenBSD: Makefile,v 1.4 2006/01/10 11:31:01 espie Exp $

COMMENT=		"OBEX protocol implementation"
DISTNAME=		openobex-1.0.1
PKGNAME=		${DISTNAME}p0
SHARED_LIBS=		openobex 1.0

CATEGORIES=		comms
HOMEPAGE=		http://openobex.sourceforge.net/
MAINTAINER=		Alexander Yurchenko <grange@openbsd.org>

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
