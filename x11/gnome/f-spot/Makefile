# $OpenBSD: Makefile,v 1.9 2009/01/26 14:40:58 ajacoutot Exp $

BROKEN=			segfault on startup

COMMENT=		personal photo management application for GNOME

GNOME_VERSION=		0.5.0.3
GNOME_PROJECT=		f-spot
SHARED_LIBS +=	fspoteog             0.0      # .0.0
SHARED_LIBS +=	fspotjpegtran        0.0      # .0.0
SHARED_LIBS +=	fspot                0.0      # .0.0
CATEGORIES=		graphics

HOMEPAGE=		http://www.f-spot.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			lang/mono \
			x11/gnome

USE_X11=		Yes

DESKTOP_FILES=		Yes

WANTLIB=		jpeg m

BUILD_DEPENDS=		${RUN_DEPENDS}

RUN_DEPENDS=		::lang/mono \
			::sysutils/ndesk-dbus-glib \
			::x11/gnome/screensaver \
			::x11/gnome/doc-utils \
			::x11/gnome/mono-gnome \
			::graphics/libgphoto2
LIB_DEPENDS+=		exif::graphics/libexif \
			lcms::graphics/lcms

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/f-spot \
			--disable-schemas-install \
			--disable-scrollkeeper \
			--disable-unit
CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

DLLMAP_FILES=	Tao/Tao.OpenGl.Glu/Tao.OpenGl.Glu.dll.config \
		Tao/Tao.OpenGl.ExtensionLoader/Tao.OpenGl.ExtensionLoader.dll.config \
		Tao/Tao.OpenGl/Tao.OpenGl.dll.config \
		libgphoto2-sharp/libgphoto2-sharp.dll.config \
		dbus-sharp-glib/NDesk.DBus.GLib.dll.config \
		src/FSpot.Utils.dll.config \
		src/f-spot.exe.config.in \
		src/Cms.dll.config.in \
		gio-sharp/gio/gio-sharp.dll.config.in \
		mono-addins/Mono.Addins/Mono.Addins.dll.config

.include <bsd.port.mk>
