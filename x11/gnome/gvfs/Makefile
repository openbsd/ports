# $OpenBSD: Makefile,v 1.79 2012/09/27 17:38:17 ajacoutot Exp $

COMMENT-main=	GNOME Virtual File System
COMMENT-smb=	samba module for GVFS

GNOME_PROJECT=	gvfs
GNOME_VERSION=	1.14.0

PKGNAME-main=	${DISTNAME}
PKGNAME-smb=	${GNOME_PROJECT}-smb-${GNOME_VERSION}

SHARED_LIBS +=  gvfscommon           4.0      # .0.0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += pcre pthread util z

WANTLIB-main +=	${WANTLIB}
WANTLIB-main += bz2 m lzma soup-2.4 sqlite3 expat avahi-common
WANTLIB-main += xml2 archive soup-gnome-2.4 avahi-client avahi-glib
WANTLIB-main += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB-main += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB-main += atk-bridge-2.0 atspi cairo cairo-gobject dbus-1 drm
WANTLIB-main += fontconfig freetype gcrypt gdk-3 gdk_pixbuf-2.0 gnome-keyring
WANTLIB-main += gpg-error gtk-3 harfbuzz icudata icule icuuc pango-1.0
WANTLIB-main += pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread-stubs
WANTLIB-main += stdc++ xcb xcb-render xcb-shm

MODGNOME_DESKTOP_FILE=	Yes

# man pages
BUILD_DEPENDS += textproc/docbook-xsl

LIB_DEPENDS-main= ${LIB_DEPENDS} \
		archivers/libarchive \
		devel/libsoup,-gnome \
		net/avahi \
		x11/gtk+3

WANTLIB-smb += ${WANTLIB} gvfscommon smbclient execinfo talloc tdb wbclient
RUN_DEPENDS-smb= ${MODGETTEXT_RUN_DEPENDS}
LIB_DEPENDS-smb= ${LIB_DEPENDS} \
		${BASE_PKGPATH},-main=${GNOME_VERSION} \
		net/samba

CONFIGURE_ARGS=	--disable-cdda \
		--disable-bluray \
		--disable-fuse \
		--disable-hal \
		--disable-afc \
		--disable-obexftp \
		--disable-gphoto2 \
		--disable-gudev \
		--disable-udev \
		--disable-gdu

MULTI_PACKAGES=		-main
PSEUDO_FLAVORS=		no_smb
FLAVOR?=

.if ${FLAVOR:L:Mno_smb}
CONFIGURE_ARGS+= --disable-samba
.else
CONFIGURE_ARGS+= --enable-samba
MULTI_PACKAGES+= -smb
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} \
		-c ${FILESDIR}/mount-archive.desktop.in \
		${PREFIX}/share/applications/mount-archive.desktop
	rm ${PREFIX}/lib/gio/modules/*.{a,la}

.include <bsd.port.mk>
