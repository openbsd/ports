COMMENT=		GNOME encryption interface

GNOME_PROJECT=		seahorse
GNOME_VERSION=		43.0
REVISION=		0

CATEGORIES=		security

# GPLv2/GFDLv1.1
PERMIT_PACKAGE=		Yes

WANTLIB += c gck-1 gcr-base-3 gcr-ui-3 gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gobject-2.0 gpgme gtk-3 handy-1 intl ldap
WANTLIB += pwquality secret-1 soup-3.0

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
			devel/libsoup3 \
			security/gpgme \
			security/libpwquality \
			x11/gnome/gcr \
			x11/gnome/libsecret \
			x11/libhandy

BUILD_DEPENDS +=	security/gnupg
RUN_DEPENDS +=		security/gnupg

# XXX ssh/libseahorse-ssh.a.p/key.c:903:2: error: non-void function
# 'seahorse_ssh_key_parse_co' should return a value
CFLAGS +=		-Wno-return-type

.include <bsd.port.mk>

# XXX ssh/libseahorse-ssh.a.p/operation.c:536:2: error: incompatible pointer
# to integer conversion returning 'void *' from a function with result type
# 'gboolean' (aka 'int') [-Wint-conversion]
.if ${CHOSEN_COMPILER} == base-clang
CFLAGS +=		-Wno-int-conversion
.endif
