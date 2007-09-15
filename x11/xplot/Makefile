# $OpenBSD: Makefile,v 1.2 2007/09/15 20:04:28 merdely Exp $

COMMENT=	fast tool to graph and visualize lots of data

DISTNAME=	xplot-0.90.7.1
CATEGORIES=	net x11

HOMEPAGE=	http://www.xplot.org/

MAINTAINER=	Markus Friedl <markus@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 c m

MASTER_SITES=	${HOMEPAGE}xplot/

USE_X11=	Yes

CONFIGURE_STYLE=gnu dest

NO_REGRESS=	Yes

.include <bsd.port.mk>
