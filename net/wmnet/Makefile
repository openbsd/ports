# $OpenBSD: Makefile,v 1.21 2013/10/11 20:39:41 naddy Exp $

COMMENT=	little X dock.app network monitor

DISTNAME=	wmnet-1.06
REVISION=	7
CATEGORIES=	net x11 x11/windowmaker
HOMEPAGE=	http://www.katharineosborne.com/wmnet/
MASTER_SITES=	http://dockapps.org/files/77/115/

MAINTAINER=	Vladimir Popov <pva48@mail.ru>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c kvm m pthread-stubs xcb

CONFIGURE_STYLE=imake
USE_GROFF =	Yes
NO_TEST=	Yes

.include <bsd.port.mk>
