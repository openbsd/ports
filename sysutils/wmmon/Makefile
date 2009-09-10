# $OpenBSD: Makefile,v 1.13 2009/09/10 22:17:52 jasper Exp $

COMMENT=	WindowMaker dock app similar to xload

DISTNAME=	wmmon-1.0b2
PKGNAME=	${DISTNAME}p1
CATEGORIES=	sysutils x11 x11/windowmaker

MASTER_SITES=	http://www.phil.uu.nl/~lievisse/distfiles/

MAINTAINER=	Vladimir Popov <pva48@mail.ru>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c kvm pthread-stubs xcb

USE_X11=	Yes

WRKDIST=	${WRKDIR}/wmmon.app
WRKSRC=		${WRKDIST}/wmmon

NO_REGRESS=	Yes

.include <bsd.port.mk>
