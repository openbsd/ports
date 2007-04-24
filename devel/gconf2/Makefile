# $OpenBSD: Makefile,v 1.23 2007/04/24 12:53:37 jasper Exp $

COMMENT=	"configuration database system for GNOME"

VERSION=	2.18.0.1
DISTNAME=	GConf-${VERSION}
PKGNAME=	gconf2-${VERSION}
SHARED_LIBS +=	gconf-2         5.2           # .5.2
CATEGORIES=	devel

HOMEPAGE=	http://www.gnome.org/projects/gconf/

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender atk-1.0 c cairo expat fontconfig freetype glitz \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 png pthread z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/GConf/2.18/}
EXTRACT_SUFX=		.tar.bz2

MODULES=	devel/gettext
BUILD_DEPENDS=	:p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS=	glib-2.0.>=1200.0,gmodule-2.0.>=1200.0,gobject-2.0.>=1200.0,gthread-2.0.>=1200.0::devel/glib2 \
		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		ORBit-2.>=2.0::devel/ORBit2 \
		xml2.>=9::textproc/libxml

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV= 	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
