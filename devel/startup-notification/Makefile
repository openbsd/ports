# $OpenBSD: Makefile,v 1.8 2006/05/13 16:19:36 steven Exp $

COMMENT=		"library for tracking application startup"

DISTNAME=		startup-notification-0.8
PKGNAME=		${DISTNAME}p0
CATEGORIES=		devel x11 x11/gnome

SHARED_LIBS=		startup-notification-1	0.0

HOMEPAGE=		http://www.freedesktop.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/startup-notification/0.8/}
EXTRACT_SUFX=		.tar.bz2

USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
