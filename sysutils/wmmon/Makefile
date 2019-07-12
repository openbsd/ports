# $OpenBSD: Makefile,v 1.23 2019/07/12 20:49:54 sthen Exp $

COMMENT=	WindowMaker dock app similar to xload

DISTNAME=	wmmon-1.0b2
REVISION =	4
CATEGORIES=	sysutils x11 x11/windowmaker

MASTER_SITES=	https://distfiles.nl/

MAINTAINER=	Vladimir Popov <pva48@mail.ru>

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		X11 Xext Xpm c kvm xcb

MAKE_FLAGS=	CC="${CC}"

WRKDIST=	${WRKDIR}/wmmon.app
WRKSRC=		${WRKDIST}/wmmon

NO_TEST=	Yes

.include <bsd.port.mk>
