# $OpenBSD: Makefile,v 1.8 2004/12/19 17:27:04 alek Exp $

COMMENT=	"time/date applet for WindowMaker"

DISTNAME=	wmtime-1.0b2
CATEGORIES=	x11 x11/windowmaker
MASTER_SITES=	ftp://ftp.enteract.com/users/rneswold/
HOMEPAGE=	http://windowmaker.mezaway.org

MAINTAINER= 	Arthur H. Johnson II <arthur@linuxbox.nu>	

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xext Xpm c m

WRKDIST=        ${WRKDIR}/wmtime.app/
WRKSRC=		${WRKDIST}/wmtime/
USE_X11=	Yes

NO_REGRESS=	Yes

.include <bsd.port.mk>
