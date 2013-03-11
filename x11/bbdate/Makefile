# $OpenBSD: Makefile,v 1.14 2013/03/11 11:46:08 espie Exp $

COMMENT=	displays the date and resembles the toolbar

DISTNAME=	bbdate-0.2.4
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bbtools/} \
		http://openbsd.rutgers.edu/
HOMEPAGE=	http://bbtools.sourceforge.net/download.php?file=3

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		ICE SM X11 c m stdc++


CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
