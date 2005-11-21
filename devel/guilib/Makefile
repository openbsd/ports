# $OpenBSD: Makefile,v 1.13 2005/11/21 01:16:53 jakemsr Exp $

COMMENT=	"SDL C++ GUI widget library"

DISTNAME=	GUIlib-1.1.1
PKGNAME=	${DISTNAME:L}p0
CATEGORIES=	devel graphics
MASTER_SITES=	http://www.libsdl.org/projects/GUIlib/src/

HOMEPAGE=	http://www.libsdl.org/projects/GUIlib/

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xext m usbhid

LIB_DEPENDS=	SDL.::devel/sdl

USE_X11=	Yes
USE_LIBTOOL=	Yes
SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		LDFLAGS="-L${X11BASE}/lib"
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.own.mk>
USE_GCC3?=No
.if ${USE_GCC3:L} == "yes"
MAKE_FLAGS+=libGUI_la_LIBADD=-lsupc++
.endif

.include <bsd.port.mk>
