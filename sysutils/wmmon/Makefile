# $OpenBSD: Makefile,v 1.17 2013/03/11 11:41:33 espie Exp $

COMMENT=	WindowMaker dock app similar to xload

DISTNAME=	wmmon-1.0b2
REVISION =	1
CATEGORIES=	sysutils x11 x11/windowmaker

MASTER_SITES=	http://distfiles.nl/

MAINTAINER=	Vladimir Popov <pva48@mail.ru>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 Xext Xpm c kvm pthread-stubs xcb


WRKDIST=	${WRKDIR}/wmmon.app
WRKSRC=		${WRKDIST}/wmmon

NO_TEST=	Yes

.include <bsd.port.mk>
