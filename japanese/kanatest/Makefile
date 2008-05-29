# $OpenBSD: Makefile,v 1.11 2008/05/29 22:33:18 fgsch Exp $

COMMENT=	beginner's drill tool to learn Japanese kana characters 

DISTNAME=	kanatest-0.3.6
PKGNAME=	${DISTNAME}p3
CATEGORIES=	japanese

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org> 

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB =	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype glib-2.0 glitz gmodule-2.0 gobject-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pixman-1 png z 

MASTER_SITES=	http://clay.ll.pl/download/

MODULES=	devel/gettext

LIB_DEPENDS=	gdk-x11-2.0.>=600.0,gdk_pixbuf-2.0.>=600.0,gtk-x11-2.0.>=600.0::x11/gtk+2 

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
                LDFLAGS="-L${LOCALBASE}/lib"

USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
