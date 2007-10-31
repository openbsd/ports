# $OpenBSD: Makefile,v 1.6 2007/10/31 22:31:04 eric Exp $

COMMENT=		OpenGL image compositing library

DISTNAME=		glitz-0.5.6
PKGNAME=		${DISTNAME}p0
SHARED_LIBS +=	glitz                2.0      # .1.0
SHARED_LIBS +=	glitz-glx            2.0      # .1.0

CATEGORIES=		graphics

HOMEPAGE=		http://www.freedesktop.org/Software/glitz

MAINTAINER=		Eric Faurot <eric@openbsd.org>

WANTLIB=		GL X11 Xau Xdmcp m pthread

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://cairographics.org/snapshots/

USE_X11=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		simple

.include <bsd.port.mk>
