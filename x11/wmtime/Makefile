# $OpenBSD: Makefile,v 1.18 2019/05/02 19:43:20 danj Exp $

COMMENT=	time/date applet for WindowMaker

DISTNAME=	wmtime-1.0b2
REVISION=	2
CATEGORIES=	x11 x11/windowmaker

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
