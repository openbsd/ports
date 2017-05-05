# $OpenBSD: Makefile,v 1.16 2017/05/05 13:45:59 jca Exp $

COMMENT=	time/date applet for WindowMaker

DISTNAME=	wmtime-1.0b2
REVISION=	0
CATEGORIES=	x11 x11/windowmaker

MAINTAINER=	Arthur H. Johnson II <arthur@linuxbox.nu>

# GPL
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=		X11 Xext Xpm c m

MASTER_SITES=	http://mirror2.unixfreunde.de/ \
		http://web.cs.mun.ca/~gstarkes/wmaker/dockapps/files/

MAKE_FLAGS=	CC="${CC}"

WRKDIST=        ${WRKDIR}/wmtime.app
WRKSRC=		${WRKDIST}/wmtime

NO_TEST=	Yes

.include <bsd.port.mk>
