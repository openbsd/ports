# $OpenBSD: Makefile,v 1.8 2010/10/24 21:15:34 ajacoutot Exp $

COMMENT=	X Render extension test suite

DISTNAME=	rendercheck-1.3
CATEGORIES=	x11

HOMEPAGE=	http://www.freedesktop.org/

MAINTAINER=	Matthieu Herrb <matthieu@openbsd.org>

# X11/MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xrender c pthread-stubs xcb

MASTER_SITES=	ftp://ftp.x.org/pub/individual/app/ \
		ftp://ftp.gwdg.de/pub/x11/x.org/pub/individual/app/ \
		ftp://ftp.sunet.se/pub/X11/ftp.x.org/individual/app/

USE_GROFF =	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
