# $OpenBSD: Makefile,v 1.9 2006/07/20 04:43:28 steven Exp $

COMMENT=	"time/date applet for WindowMaker"

DISTNAME=	wmtime-1.0b2
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11 x11/windowmaker

MAINTAINER= 	Arthur H. Johnson II <arthur@linuxbox.nu>	

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xext Xpm c m

MASTER_SITES=	http://mirror2.unixfreunde.de/ \
		http://web.cs.mun.ca/~gstarkes/wmaker/dockapps/files/

WRKDIST=        ${WRKDIR}/wmtime.app/
WRKSRC=		${WRKDIST}/wmtime/
USE_X11=	Yes

NO_REGRESS=	Yes

.include <bsd.port.mk>
