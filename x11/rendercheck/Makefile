# $OpenBSD: Makefile,v 1.1.1.1 2007/06/01 21:41:54 ajacoutot Exp $

COMMENT=	"X Render extension test suite"

DISTNAME=	rendercheck-1.2
CATEGORIES=	x11

HOMEPAGE=	http://www.freedesktop.org/

MAINTAINER=	Matthieu Herrb <matthieu@openbsd.org>

# X11/MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xrender c

MASTER_SITES=	ftp://ftp.x.org/pub/individual/app/ \
		ftp://ftp.gwdg.de/pub/x11/x.org/pub/individual/app/ \
		ftp://ftp.sunet.se/pub/X11/ftp.x.org/individual/app/

USE_X11=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
