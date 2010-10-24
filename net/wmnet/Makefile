# $OpenBSD: Makefile,v 1.18 2010/10/24 21:30:02 ajacoutot Exp $

COMMENT=	little X dock.app network monitor

DISTNAME=	wmnet-1.06
REVISION=	5
CATEGORIES=	net x11 x11/windowmaker
HOMEPAGE=	http://www.katharineosborne.com/wmnet/
MASTER_SITES=	http://dockapps.org/files/77/115/

MAINTAINER=	Vladimir Popov <pva48@mail.ru>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c kvm m pthread-stubs xcb

CONFIGURE_STYLE=imake
USE_GROFF =	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
