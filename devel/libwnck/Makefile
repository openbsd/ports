# $OpenBSD: Makefile,v 1.25 2007/04/23 16:33:00 jasper Exp $

COMMENT=		"window navigator construction kit"

DISTNAME=		libwnck-2.18.0
SHARED_LIBS=		wnck-1	20.8	# .20.8
CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libwnck/2.18/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 XRes Xau Xcursor Xdmcp Xext Xfixes Xi \
			Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
			freetype glib-2.0 glitz gmodule-2.0 gobject-2.0 m \
			pango-1.0 pangocairo-1.0 pangoft2-1.0 png z

MODULES=		devel/gettext

BUILD_DEPENDS=		::textproc/p5-XML-Parser
LIB_DEPENDS=		gdk-x11-2.0.>=1000.0,gdk_pixbuf-2.0.>=1000.0,gtk-x11-2.0.>=1000.0::x11/gtk+2 \
			startup-notification-1::devel/startup-notification

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
