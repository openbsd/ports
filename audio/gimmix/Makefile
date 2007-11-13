# $OpenBSD: Makefile,v 1.2 2007/11/13 12:44:22 steven Exp $

COMMENT=		small and easy to use graphical MPD client

DISTNAME=		gimmix-0.4.1
PKGNAME=		${DISTNAME}p0
CATEGORIES=		audio x11

HOMEPAGE=		http://gimmix.berlios.de/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xcomposite Xdamage pcre \
		Xrender atk-1.0 c cairo expat fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		png stdc++ xml2 z

MASTER_SITES=		${MASTER_SITE_BERLIOS:=gimmix/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

USE_X11=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS=		mpd:libmpd->=0.14:audio/libmpd \
			tag,tag_c::audio/taglib \
			glade-2.0::devel/libglade2
RUN_DEPENDS=		::devel/desktop-file-utils

.include <bsd.port.mk>
