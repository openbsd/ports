# $OpenBSD: Makefile,v 1.21 2017/10/23 17:11:03 sthen Exp $

COMMENT=	WindowMaker dock app similar to xload

DISTNAME=	wmmon-1.0b2
REVISION =	3
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
