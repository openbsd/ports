# $OpenBSD: Makefile,v 1.5 1999/10/29 12:05:31 espie Exp $

DISTNAME=	dxpc-3.7.0
CATEGORIES=	net x11

MAINTAINER=	espie@openbsd.org

MASTER_SITES=	ftp://ftp.x.org/contrib/utilities/ \
		ftp://sunsite.unc.edu/pub/Linux/X11/xutils/

CXXFLAGS=	-O2 

NEED_VERSION=1.47
USE_EGXX=	yes

# we need to make a proper check for accept
USE_AUTOCONF=	yes

.include <bsd.port.mk>
