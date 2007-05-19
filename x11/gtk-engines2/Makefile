# $OpenBSD: Makefile,v 1.23 2007/05/19 09:15:11 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		"collection of theme engines for GTK+2"

V=			2.10.1
DISTNAME=		gtk-engines-${V}
PKGNAME=		gtk-engines2-${V}p0
CATEGORIES=		x11

HOMEPAGE=		http://www.gnome.org

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xcursor Xext Xfixes Xi Xinerama Xrandr \
		Xrender atk-1.0 cairo expat fontconfig freetype glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 png z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gtk-engines/2.10/}
EXTRACT_SUFX=		.tar.bz2

BUILD_DEPENDS=         :p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS=	       gdk-x11-2.0.>=1000,gdk_pixbuf-2.0.>=1000,gtk-x11-2.0.>=1000::x11/gtk+2
RUN_DEPENDS=	       :hicolor-icon-theme-*:x11/hicolor-icon-theme

USE_GMAKE=	       Yes

MODULES=		devel/gettext

USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ENV=         CPPFLAGS="-I${LOCALBASE}/include" \
		       LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=	       Yes

.include <bsd.port.mk>
