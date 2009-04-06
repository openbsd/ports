# $OpenBSD: Makefile,v 1.15 2009/04/06 10:05:21 ajacoutot Exp $

COMMENT=	desktop note-taking application written in C\#

GNOME_PROJECT=	tomboy
GNOME_VERSION=	0.12.2
PKGNAME=	${DISTNAME}p5

CATEGORIES=	x11

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	x11/gnome \
		lang/mono \
		devel/gettext

USE_X11=	Yes
DESKTOP_FILES=	Yes
MODGNOME_HELP_FILES=	Yes

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 \
		cairo expat fontconfig freetype gailutil gdk-x11-2.0 \
		gdk_pixbuf-2.0 glib-2.0 glitz gmodule-2.0 gnomecanvas-2 \
		gnomeprint-2-2 gnomeprintui-2-2 gobject-2.0 gtk-x11-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png xml2 z gio-2.0

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::lang/mono \
		::devel/mono-addins \
		::sysutils/ndesk-dbus-glib \
		::x11/gnome/mono-gnome \
		:shared-mime-info->=0.21:misc/shared-mime-info \
		:gnome-icon-theme->=2.18.0:x11/gnome/icon-theme \

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-sketching=no \
		--disable-schemas-install \
		--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/tomboy
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

DLLMAP_FILES=	Tomboy/Tomboy.exe.config.in

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
