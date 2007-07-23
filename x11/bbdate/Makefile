# $OpenBSD: Makefile,v 1.12 2007/07/23 18:30:55 ajacoutot Exp $

COMMENT=	displays the date and resembles the toolbar

DISTNAME=	bbdate-0.2.4
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bbtools/} \
		http://openbsd.rutgers.edu/
HOMEPAGE=	http://bbtools.sourceforge.net/download.php?file=3

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 c m stdc++

USE_X11=	Yes

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
