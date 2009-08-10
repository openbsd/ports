# $OpenBSD: Makefile,v 1.5 2009/08/10 06:29:52 kili Exp $

COMMENT=		small and easy to use graphical MPD client

DISTNAME=		gimmix-0.4.1
PKGNAME=		${DISTNAME}p3
CATEGORIES=		audio x11

HOMEPAGE=		http://gimmix.berlios.de/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png stdc++
WANTLIB += xml2 z
WANTLIB += pthread-stubs xcb

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
