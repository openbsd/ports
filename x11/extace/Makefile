# $OpenBSD: Makefile,v 1.9 2009/08/11 08:42:07 ajacoutot Exp $

COMMENT=	audio visualization plugin for the X-Window System

DISTNAME=	extace-1.9.9
PKGNAME=	${DISTNAME}p3
CATEGORIES=	x11 audio

HOMEPAGE=	http://extace.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=extace/}

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 audiofile c cairo
WANTLIB += expat fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread sndio z
WANTLIB += pthread-stubs xcb

MODULES=	devel/gettext
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0.>=1200::x11/gtk+2 \
		esd.>=2::audio/esound \
		fftw3.>=4::math/fftw3

USE_X11=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
