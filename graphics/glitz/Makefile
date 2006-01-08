# $OpenBSD: Makefile,v 1.3 2006/01/08 10:04:16 steven Exp $

COMMENT=		"OpenGL image compositing library"

DISTNAME=		glitz-0.4.4
SHARED_LIBS=		glitz-glx	1.0	\
			glitz		1.0

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
