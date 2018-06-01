# $OpenBSD: Makefile,v 1.22 2018/06/01 14:24:55 sthen Exp $

COMMENT=	WindowMaker dock app similar to xload

DISTNAME=	wmmon-1.0b2
REVISION =	4
CATEGORIES=	sysutils x11 x11/windowmaker

MASTER_SITES=	https://distfiles.nl/

MAINTAINER=	Vladimir Popov <pva48@mail.ru>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 Xext Xpm c kvm xcb

MAKE_FLAGS=	CC="${CC}"

WRKDIST=	${WRKDIR}/wmmon.app
WRKSRC=		${WRKDIST}/wmmon

NO_TEST=	Yes

.include <bsd.port.mk>
