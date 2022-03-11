COMMENT=		GNOME encryption interface

GNOME_PROJECT=		seahorse
GNOME_VERSION=		41.0
REVISION=		0

CATEGORIES=		security

# GPLv2/GFDLv1.1
PERMIT_PACKAGE=		Yes

WANTLIB += avahi-client avahi-common avahi-glib c gck-1 gcr-base-3
WANTLIB += gcr-ui-3 gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gpgme gtk-3 handy-1 intl ldap pwquality secret-1 soup-2.4

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS= 	desktop-file-utils gtk-update-icon-cache vala yelp

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=		-std=gnu99
.endif
# disable meson's default of using "-Wl,--as-needed" on ld.bfd arches;
# build failures due to undefined references are often seen.
.if !${PROPERTIES:Mlld}
CONFIGURE_ARGS +=	-Db_asneeded=false
.endif

LIB_DEPENDS=		databases/openldap \
			devel/libsoup \
			net/avahi,-glib \
			security/gpgme \
			security/libpwquality \
			x11/gnome/gcr \
			x11/gnome/libsecret \
			x11/libhandy

BUILD_DEPENDS +=	security/gnupg
RUN_DEPENDS +=		security/gnupg

.include <bsd.port.mk>
