# $OpenBSD: Makefile,v 1.10 2007/04/24 12:48:25 jasper Exp $

COMMENT=		"library for tracking application startup"

DISTNAME=		startup-notification-0.9
CATEGORIES=		devel x11 x11/gnome

SHARED_LIBS +=  startup-notification-1 1.0      # .0.0

HOMEPAGE=		http://www.freedesktop.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xau Xdmcp

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/startup-notification/0.9/}
EXTRACT_SUFX=		.tar.bz2

USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
