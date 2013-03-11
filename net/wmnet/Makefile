# $OpenBSD: Makefile,v 1.20 2013/03/11 11:35:58 espie Exp $

COMMENT=	little X dock.app network monitor

DISTNAME=	wmnet-1.06
REVISION=	6
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
