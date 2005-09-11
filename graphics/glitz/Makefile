# $OpenBSD: Makefile,v 1.1.1.1 2005/09/11 05:04:32 marcm Exp $

COMMENT=		"OpenGL image compositing library"

DISTNAME=		glitz-0.4.4
CATEGORIES=		graphics

HOMEPAGE=		http://www.freedesktop.org/Software/glitz

MAINTAINER=		Eric Faurot <eric.faurot@gmail.com>

WANTLIB=		GL X11 m pthread

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://cairographics.org/snapshots/

USE_X11=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
