# $OpenBSD: Makefile,v 1.5 2008/11/23 22:59:08 jasper Exp $

COMMENT=		personal photo management application for GNOME

GNOME_VERSION=		0.5.0.2
GNOME_PROJECT=		f-spot
PKGNAME=		${DISTNAME}p1
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

BUILD_DEPENDS=		::lang/mono
RUN_DEPENDS=		${BUILD_DEPENDS}

BUILD_DEPENDS+=		::sysutils/ndesk-dbus-glib \
			::x11/xscreensaver \
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

DLLMAP_FILES=		src/f-spot.exe.config \
			src/Cms.dll.config \
			src/FSpot.Utils.dll.config

.include <bsd.port.mk>
