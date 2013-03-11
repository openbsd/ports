# $OpenBSD: Makefile,v 1.11 2013/03/11 11:46:15 espie Exp $

COMMENT=	X Render extension test suite

DISTNAME=	rendercheck-1.4
CATEGORIES=	x11

HOMEPAGE=	http://www.freedesktop.org/

MAINTAINER=	Matthieu Herrb <matthieu@openbsd.org>

# X11/MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 Xau Xdmcp Xrender c pthread-stubs xcb

MASTER_SITES=	ftp://ftp.x.org/pub/individual/app/ \
		ftp://ftp.gwdg.de/pub/x11/x.org/pub/individual/app/ \
		ftp://ftp.sunet.se/pub/X11/ftp.x.org/individual/app/

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
