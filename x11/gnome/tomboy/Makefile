# $OpenBSD: Makefile,v 1.22 2009/09/06 07:29:37 ajacoutot Exp $

COMMENT=	desktop note-taking application written in C\#

GNOME_PROJECT=	tomboy
GNOME_VERSION=	0.14.3
PKGNAME=	${DISTNAME}

CATEGORIES=	x11

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo expat
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread-stubs xcb z

MODULES=	x11/gnome \
		lang/mono \
		devel/gettext \
		devel/gconf2

USE_X11=	Yes
DESKTOP_FILES=	Yes

MODGNOME_HELP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR=	tomboy
MODGCONF2_LIBDEP=	No


BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/mono-addins \
		::sysutils/ndesk-dbus-glib \
		::x11/gnome/mono-gnome-desktop \
		::textproc/gtkspell \
		:shared-mime-info->=0.21:misc/shared-mime-info \
		:gnome-icon-theme->=2.18.0:x11/gnome/icon-theme

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-evolution=no \
		--enable-galago=no \
		--enable-sketching=no
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# this is *.config.in on purpose (and not *.config)
DLLMAP_FILES=	Tomboy/Tomboy.exe.config.in \
		Tomboy/Addins/Bugzilla/BugzillaNoteAddin.cs \
		Tomboy/Addins/Evolution/EvolutionNoteAddin.cs

.include <bsd.port.mk>
