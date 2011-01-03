# $OpenBSD: Makefile,v 1.28 2011/01/03 19:47:11 jasper Exp $

COMMENT=	SDL C++ GUI widget library

DISTNAME=	GUIlib-1.1.1
PKGNAME=	${DISTNAME:L}
REVISION=	9

SHARED_LIBS +=	GUI                  1.0      # .0.1

CATEGORIES=	devel graphics
MASTER_SITES=	${HOMEPAGE}/src/

HOMEPAGE=	http://www.libsdl.org/projects/GUIlib/

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	X11 Xau Xrandr Xrender Xdmcp Xext m pthread-stubs sndio \
		stdc++ usbhid xcb SDL

LIB_DEPENDS=	devel/sdl

MODULES=	converters/libiconv

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
