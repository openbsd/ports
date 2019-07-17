# $OpenBSD: Makefile,v 1.24 2019/07/17 14:39:43 danj Exp $

COMMENT=	WindowMaker dock app similar to xload

DISTNAME=	wmmon-1.0b2
REVISION =	5
CATEGORIES=	sysutils x11 x11/windowmaker

MASTER_SITES=	https://distfiles.nl/

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		X11 Xext Xpm c kvm xcb

MAKE_FLAGS=	CC="${CC}"

WRKDIST=	${WRKDIR}/wmmon.app
WRKSRC=		${WRKDIST}/wmmon

NO_TEST=	Yes

.include <bsd.port.mk>
