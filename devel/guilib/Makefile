# $OpenBSD: Makefile,v 1.25 2010/10/24 21:10:57 ajacoutot Exp $

COMMENT=	SDL C++ GUI widget library

DISTNAME=	GUIlib-1.1.1
PKGNAME=	${DISTNAME:L}
REVISION=	8

SHARED_LIBS +=	GUI                  1.0      # .0.1

CATEGORIES=	devel graphics
MASTER_SITES=	http://www.libsdl.org/projects/GUIlib/src/

HOMEPAGE=	http://www.libsdl.org/projects/GUIlib/

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	X11 Xau Xrandr Xrender iconv Xdmcp Xext m pthread-stubs sndio \
		stdc++ usbhid xcb

LIB_DEPENDS=	SDL.::devel/sdl

USE_LIBTOOL=	Yes
SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		LDFLAGS="-L${X11BASE}/lib"
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.own.mk>

.if ${COMPILER_VERSION:L:Mgcc[34]}
MAKE_FLAGS+=libGUI_la_LIBADD=-lsupc++
.endif

.include <bsd.port.mk>
