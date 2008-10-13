# $OpenBSD: Makefile,v 1.5 2008/10/13 14:23:10 sturm Exp $

COMMENT=	complex graphical design & layout library
DISTNAME=	edje-20071211
SHARED_LIBS +=	edje                 0.0      # .5.0

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xinerama Xp Xrandr Xrender Xss c eet evas expat fontconfig \
		freetype iconv jpeg m pthread usbhid z

USE_X11=		Yes

LIB_DEPENDS=		SDL::devel/sdl \
			ecore,ecore_evas,ecore_job,ecore_txt,ecore_x::x11/e17/ecore \
			embryo::x11/e17/embryo

CONFIGURE_STYLE=	autoconf automake
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
