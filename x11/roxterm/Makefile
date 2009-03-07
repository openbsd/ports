# $OpenBSD: Makefile,v 1.10 2009/03/07 15:37:38 jasper Exp $

COMMENT=		terminal emulator for X

DISTNAME=		roxterm-1.13.0
PKGNAME=		${DISTNAME}p0
CATEGORIES=		x11

HOMEPAGE=		http://roxterm.sourceforge.net/
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=roxterm/}

MAINTAINER=		Jona Joachim <jaj@hcl-club.lu>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xft Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB += dbus-1 expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += m ncurses pango-1.0 pangocairo-1.0 pangoft2-1.0 pangox-1.0
WANTLIB += pangoxft-1.0 pcre pixman-1 png pthread xml2 z

MODULES=		devel/gettext

LIB_DEPENDS=		vte::devel/vte \
			dbus-glib-1::x11/dbus-glib \
			glade-2.0::devel/libglade2

RUN_DEPENDS=		::devel/desktop-file-utils

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

.include <bsd.port.mk>
