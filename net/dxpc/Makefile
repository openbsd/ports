# $OpenBSD: Makefile,v 1.6 1999/11/14 21:49:14 espie Exp $

DISTNAME=	dxpc-3.8.0
CATEGORIES=	net x11

MAINTAINER=	espie@openbsd.org

MASTER_SITES=	ftp://ftp.x.org/contrib/utilities/ \
		ftp://sunsite.unc.edu/pub/Linux/X11/xutils/

LIB_DEPENDS=lzo:${PORTSDIR}/archivers/lzo
CXXFLAGS=	-O2 

NEED_VERSION=1.47

GNU_CONFIGURE=yes
CONFIGURE_ARGS=--with-lzo-lib=${PREFIX}

.include <bsd.port.mk>
