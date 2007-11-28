# $OpenBSD: Makefile,v 1.1.1.1 2007/11/28 21:16:59 naddy Exp $

COMMENT=	curses-based 3270 terminal editor

DISTNAME=	c3270-3.3.6
EXTRACT_SUFX=	.tgz
CATEGORIES=	comms

HOMEPAGE=	http://x3270.bgp.nu/

MAINTAINER=	Jeremy Evans <openbsd@jeremyevans.net>

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl ncurses readline util

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=x3270/}	

WRKDIST=		${WRKDIR}/c3270-3.3
CONFIGURE_STYLE=	gnu

NO_REGRESS=		Yes

.include <bsd.port.mk>
