# $OpenBSD: Makefile,v 1.23 2013/11/22 15:38:30 sthen Exp $

COMMENT=	little X dock.app network monitor

DISTNAME=	wmnet-1.06
REVISION=	8
CATEGORIES=	net x11 x11/windowmaker
HOMEPAGE=	http://www.katharineosborne.com/wmnet/
MASTER_SITES=	http://dockapps.org/files/77/115/

MAINTAINER=	Vladimir Popov <pva48@mail.ru>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c kvm m pthread-stubs xcb

MAKE_FLAGS=	CC="${CC}" CCOPTIONS="${CFLAGS}"
CONFIGURE_STYLE=imake
NO_TEST=	Yes

.include <bsd.port.mk>
