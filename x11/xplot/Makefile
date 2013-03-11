# $OpenBSD: Makefile,v 1.5 2013/03/11 11:46:19 espie Exp $

COMMENT=	fast tool to graph and visualize lots of data

DISTNAME=	xplot-0.90.7.1
CATEGORIES=	net x11

HOMEPAGE=	http://www.xplot.org/

MAINTAINER=	Markus Friedl <markus@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 c m

MASTER_SITES=	${HOMEPAGE}xplot/

USE_GROFF =	Yes

CONFIGURE_STYLE=gnu dest

NO_TEST=	Yes

.include <bsd.port.mk>
