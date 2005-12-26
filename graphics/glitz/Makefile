# $OpenBSD: Makefile,v 1.2 2005/12/26 21:32:05 steven Exp $

COMMENT=		"OpenGL image compositing library"

DISTNAME=		glitz-0.4.4
SHARED_LIBS=		glitz-glx	1.0	\
			glitz		1.0
MODGNU_SHARED_LIBS=	glitz-glx	'-no-undefined'	\
			glitz		'-no-undefined'
LIBglitz-glx_ALIAS=	glitz_glx

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
