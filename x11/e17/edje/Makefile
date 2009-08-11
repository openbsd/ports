# $OpenBSD: Makefile,v 1.7 2009/08/11 08:42:07 ajacoutot Exp $

COMMENT=	complex graphical design & layout library
DISTNAME=	edje-20071211
PKGNAME=	${DISTNAME}p1

SHARED_LIBS +=	edje                 0.0      # .5.0

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xinerama Xp Xrandr Xrender Xss c eet evas expat fontconfig
WANTLIB += freetype iconv jpeg m pthread sndio usbhid z pthread-stubs
WANTLIB += xcb

USE_X11=		Yes

LIB_DEPENDS=		SDL::devel/sdl \
			ecore,ecore_evas,ecore_job,ecore_txt,ecore_x::x11/e17/ecore \
			embryo::x11/e17/embryo

CONFIGURE_STYLE=	autoconf automake
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
