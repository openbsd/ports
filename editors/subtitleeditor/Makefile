# $OpenBSD: Makefile,v 1.6 2009/08/10 06:31:08 kili Exp $

COMMENT=	GTK+2 tool to edit subtitles

DISTNAME=	subtitleeditor-0.13.6
PKGNAME=	${DISTNAME}p3
CATEGORIES=	graphics editors

HOMEPAGE=	http://kitone.free.fr/subtitleeditor/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/files/

WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xcomposite Xdamage \
		Xrender atk-1.0 atkmm-1.6 c cairo cairomm-1.0 expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		gdkmm-2.4  gio-2.0 giomm-2.4 glade-2.0 glib-2.0 glibmm-2.4 \
		glitz gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
		gtkmm-2.4 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pangomm-1.4 pixman-1 png pthread pthread-stubs \
		sigc-2.0 stdc++ xcb xml2 z

BUILD_DEPENDS=	:gstreamer-plugins-good-*:multimedia/gstreamer-0.10/plugins-good \
		:iso-codes-*:devel/iso-codes
LIB_DEPENDS=	glademm-2.4.>=1::devel/libglademm \
		pcre.>=1,pcrecpp.>=2:pcre->=6.4p2:devel/pcre \
		enchant.>=4::textproc/enchant \
		gstreamer-0.10,gstbase-0.10::multimedia/gstreamer-0.10/core \
		gstaudio-0.10,gstinterfaces-0.10,gstvideo-0.10::multimedia/gstreamer-0.10/plugins-base
RUN_DEPENDS=	:gstreamer-plugins-good-*:multimedia/gstreamer-0.10/plugins-good \
		:iso-codes-*:devel/iso-codes \
		:desktop-file-utils-*:devel/desktop-file-utils

MODULES=	devel/gettext
USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
