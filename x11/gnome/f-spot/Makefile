# $OpenBSD: Makefile,v 1.1.1.1 2008/10/17 10:39:17 jasper Exp $

COMMENT=		personal photo management application for GNOME

GNOME_VERSION=		0.5.0.2
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

# XXX: To be fixed
MASTER_SITES=		${MASTER_SITE_GNOME:=sources/${GNOME_PROJECT}/0.5/}

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
			::x11/gnome/mono-gnome
LIB_DEPENDS+=		exif::graphics/libexif \
			lcms::graphics/lcms

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/f-spot \
			--disable-schemas-install \
			--disable-scrollkeeper \
			--disable-unit
CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
