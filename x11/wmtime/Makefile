# $OpenBSD: Makefile,v 1.17 2018/05/25 13:01:41 espie Exp $

COMMENT=	time/date applet for WindowMaker

DISTNAME=	wmtime-1.0b2
REVISION=	1
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
