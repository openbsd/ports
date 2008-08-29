# $OpenBSD: Makefile,v 1.2 2008/08/29 21:48:42 jcs Exp $

SHARED_ONLY=	Yes

COMMENT=	pidgin plugin to display messages through libnotify

DISTNAME=	pidgin-libnotify-0.13
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11

HOMEPAGE=	http://gaim-libnotify.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gaim-libnotify/}

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo dbus-1 dbus-glib-1 \
		expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		glib-2.0 glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png \
		z

MODULES=	devel/gettext
LIB_DEPENDS=	purple::net/pidgin \
		notify.>=2::devel/libnotify
BUILD_DEPENDS=	::textproc/p5-XML-Parser
RUN_DEPENDS=	${BUILD_DEPENDS}

USE_X11=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
