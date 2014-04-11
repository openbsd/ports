# $OpenBSD: Makefile,v 1.124 2014/04/11 14:47:25 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT-main=		GNOME Virtual File System
COMMENT-smb=		GVFS mount module for samba
COMMENT-goa=		GVFS volume monitor for gnome-online-account

GNOME_PROJECT=		gvfs
GNOME_VERSION=		1.20.1

PKGNAME-main=		${DISTNAME}
PKGNAME-smb=		${GNOME_PROJECT}-smb-${GNOME_VERSION}
PKGNAME-goa=		${GNOME_PROJECT}-goa-${GNOME_VERSION}

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/gettext \
			x11/gnome \
			devel/dconf

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 pcre pthread
WANTLIB += util z

WANTLIB-main +=	${WANTLIB}
WANTLIB-main += ICE SM X11 Xcomposite Xcursor Xdamage xcb-shm
WANTLIB-main += Xext Xfixes Xi Xinerama Xrandr Xrender graphite2 xml2
WANTLIB-main += atk-1.0 atk-bridge-2.0 atspi avahi-client avahi-common
WANTLIB-main += avahi-glib bz2 cairo cairo-gobject dbus-1 expat
WANTLIB-main += fontconfig freetype fuse gdk-3 gdk_pixbuf-2.0 xml2
WANTLIB-main += archive gtk-3 harfbuzz lzma m pango-1.0
WANTLIB-main += pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread-stubs
WANTLIB-main += soup-2.4 sqlite3 gthread-2.0 xcb xcb-render
WANTLIB-main += gcrypt gpg-error secret-1

WANTLIB-smb += ${WANTLIB}
WANTLIB-smb += smbclient execinfo talloc tdb wbclient
WANTLIB-smb += gcrypt gpg-error secret-1

WANTLIB-goa += ${WANTLIB}
WANTLIB-goa += goa-1.0

MODGNOME_TOOLS=		desktop-file-utils docbook

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			archivers/libarchive \
			devel/libsoup \
			net/avahi \
			x11/gnome/libsecret \
			x11/gtk+3

RUN_DEPENDS-smb=	${MODGETTEXT_RUN_DEPENDS} \
			${MODDCONF_RUN_DEPENDS} \
			${BASE_PKGPATH},-main=${GNOME_VERSION}
LIB_DEPENDS-smb=	${LIB_DEPENDS} \
			net/samba

RUN_DEPENDS-goa=	${MODGETTEXT_RUN_DEPENDS} \
			${BASE_PKGPATH},-main=${GNOME_VERSION}
LIB_DEPENDS-goa=	${LIB_DEPENDS} \
			x11/gnome/online-accounts

CONFIGURE_ARGS=		--disable-libsystemd-login \
			--disable-cdda \
			--disable-bluray \
			--disable-afc \
			--disable-obexftp \
			--disable-gudev \
			--disable-udev \
			--disable-gdu

MULTI_PACKAGES=		-main -smb -goa

PSEUDO_FLAVORS=		no_smb no_goa bootstrap
FLAVOR?=		no_smb no_goa bootstrap

.include <bsd.port.arch.mk>

.if !${BUILD_PACKAGES:M-smb}
CONFIGURE_ARGS +=	--disable-samba
.endif

.if !${BUILD_PACKAGES:M-goa}
CONFIGURE_ARGS +=	--disable-goa
.endif

# test_polkitd.py, gvfs-test
TEST_DEPENDS=		devel/py-gobject3

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	rm ${PREFIX}/lib/gio/modules/*.{a,la}
	rm ${PREFIX}/lib/gvfs/*.{a,la}

.include <bsd.port.mk>
