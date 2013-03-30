# $OpenBSD: Makefile,v 1.87 2013/03/30 17:06:41 ajacoutot Exp $

COMMENT-main=	GNOME Virtual File System
COMMENT-smb=	samba module for GVFS

GNOME_PROJECT=	gvfs
GNOME_VERSION=	1.16.0

PKGNAME-main=	${DISTNAME}
PKGNAME-smb=	${GNOME_PROJECT}-smb-${GNOME_VERSION}

REVISION-main=	1

SHARED_LIBS +=  gvfscommon           4.0      # .0.0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

WANTLIB += c ffi gcrypt gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += pcre pthread secret-1 util z

WANTLIB-main +=	${WANTLIB}
WANTLIB-main += ICE SM X11 Xcomposite Xcursor Xdamage xcb-shm
WANTLIB-main += Xext Xfixes Xi Xinerama Xrandr Xrender graphite2 xml2
WANTLIB-main += atk-1.0 atk-bridge-2.0 atspi avahi-client avahi-common
WANTLIB-main += avahi-glib bz2 cairo cairo-gobject dbus-1 expat
WANTLIB-main += fontconfig freetype gdk-3 gdk_pixbuf-2.0 xml2 archive
WANTLIB-main += gtk-3 harfbuzz icudata icule icuuc lzma m pango-1.0
WANTLIB-main += pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread-stubs
WANTLIB-main += soup-2.4 soup-gnome-2.4 sqlite3 gthread-2.0 xcb xcb-render

WANTLIB-smb += ${WANTLIB}
WANTLIB-smb += gvfscommon smbclient execinfo talloc tdb wbclient

MODGNOME_DESKTOP_FILE=	Yes

# man pages
BUILD_DEPENDS += textproc/docbook-xsl

LIB_DEPENDS=	x11/gnome/libsecret

LIB_DEPENDS-main= ${LIB_DEPENDS} \
		archivers/libarchive \
		devel/libsoup,-gnome \
		net/avahi \
		x11/gtk+3

RUN_DEPENDS-smb= ${MODGETTEXT_RUN_DEPENDS}
LIB_DEPENDS-smb= ${LIB_DEPENDS} \
		${BASE_PKGPATH},-main=${GNOME_VERSION} \
		net/samba

CONFIGURE_ARGS=	--disable-cdda \
		--disable-bluray \
		--disable-afc \
		--disable-obexftp \
		--disable-gudev \
		--disable-udev \
		--disable-gdu

# XXX subpackage
CONFIGURE_ARGS += --disable-goa

MULTI_PACKAGES=		-main
PSEUDO_FLAVORS=		no_smb
FLAVOR?=

.if ${FLAVOR:Mno_smb}
CONFIGURE_ARGS+= --disable-samba
.else
CONFIGURE_ARGS+= --enable-samba
MULTI_PACKAGES+= -smb
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	rm ${PREFIX}/lib/gio/modules/*.{a,la}

.include <bsd.port.mk>
