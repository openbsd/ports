# $OpenBSD: Makefile,v 1.19 2013/08/09 23:12:20 ajacoutot Exp $

COMMENT=	audio visualization plugin for the X-Window System

DISTNAME=	extace-1.9.9
REVISION=	8
CATEGORIES=	x11 audio

HOMEPAGE=	http://extace.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=extace/}

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes fftw3
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 audiofile c cairo esd
WANTLIB += expat fontconfig freetype gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread sndio z
WANTLIB += pthread-stubs xcb gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0

MODULES=	devel/gettext
LIB_DEPENDS=	x11/gtk+2 \
		audio/esound \
		math/fftw3


CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
