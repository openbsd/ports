# $OpenBSD: Makefile,v 1.5 2004/12/10 20:34:00 marcm Exp $

COMMENT=		"library for tracking application startup"

DISTNAME=		startup-notification-0.7
CATEGORIES=		devel x11 x11/gnome

HOMEPAGE=		http://www.freedesktop.org/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/startup-notification/0.7/}
EXTRACT_SUFX=		.tar.bz2

USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
