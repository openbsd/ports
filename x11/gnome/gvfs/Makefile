# $OpenBSD: Makefile,v 1.142 2015/09/21 09:35:41 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT-main=		GNOME Virtual File System
COMMENT-smb=		GVFS mount module for samba
COMMENT-goa=		GVFS volume monitor for gnome-online-account
COMMENT-nfs=		GVFS mount module for NFS

GNOME_PROJECT=		gvfs
GNOME_VERSION=		1.24.2

PKGNAME-main=		${DISTNAME}
PKGNAME-smb=		${GNOME_PROJECT}-smb-${GNOME_VERSION}
PKGNAME-goa=		${GNOME_PROJECT}-goa-${GNOME_VERSION}
PKGNAME-nfs=		${GNOME_PROJECT}-nfs-${GNOME_VERSION}

REVISION-main=		1
REVISION-smb=		1
REVISION-goa=		1
REVISION-nfs=		1

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

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
WANTLIB-main += gcrypt gpg-error secret-1 epoxy lzo2

WANTLIB-smb += ${WANTLIB}
WANTLIB-smb += gcrypt gpg-error secret-1 smbclient
WANTLIB-smb += com_err crypto dcerpc-binding execinfo gensec gmp gnutls
WANTLIB-smb += hogweed lber-2.4 ldap-2.4 ldb ndr ndr-krb5pac ndr-nbt
WANTLIB-smb += ndr-standard nettle nss_wrapper ntdb p11-kit replace
WANTLIB-smb += samba-credentials samba-hostconfig samba-util samdb
WANTLIB-smb += sasl2 smbconf socket_wrapper ssl talloc tasn1 tdb tevent
WANTLIB-smb += tevent-util uid_wrapper util_setid wbclient
WANTLIB-smb += lib/samba/asn1-samba4
WANTLIB-smb += lib/samba/gssapi-samba4
WANTLIB-smb += lib/samba/hcrypto-samba4
WANTLIB-smb += lib/samba/heimbase-samba4
WANTLIB-smb += lib/samba/hx509-samba4
WANTLIB-smb += lib/samba/krb5-samba4
WANTLIB-smb += lib/samba/roken-samba4
WANTLIB-smb += lib/samba/wind-samba4

WANTLIB-goa += ${WANTLIB}
WANTLIB-goa += goa-1.0

WANTLIB-nfs += ${WANTLIB}
WANTLIB-nfs += gcrypt gpg-error nfs secret-1

MODGNOME_TOOLS=		docbook

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

RUN_DEPENDS-nfs=	${MODGETTEXT_RUN_DEPENDS} \
			${BASE_PKGPATH},-main=${GNOME_VERSION}
LIB_DEPENDS-nfs=	${LIB_DEPENDS} \
			devel/libnfs \
			x11/gnome/libsecret

CONFIGURE_ARGS=		--disable-libsystemd-login \
			--disable-cdda \
			--disable-bluray \
			--disable-afc \
			--disable-obexftp \
			--disable-gudev \
			--disable-udev \
			--disable-gdu

MULTI_PACKAGES=		-main -goa -nfs -smb

PSEUDO_FLAVORS=		no_smb no_goa no_nfs bootstrap
FLAVOR?=		no_smb no_goa no_nfs bootstrap

.include <bsd.port.arch.mk>

.if !${BUILD_PACKAGES:M-smb}
CONFIGURE_ARGS +=	--disable-samba
.endif

.if !${BUILD_PACKAGES:M-goa}
CONFIGURE_ARGS +=	--disable-goa
.endif

.if !${BUILD_PACKAGES:M-nfs}
CONFIGURE_ARGS +=	--disable-nfs
.endif

# test_polkitd.py, gvfs-test
TEST_DEPENDS=		devel/py-gobject3

post-install:
	rm ${PREFIX}/lib/gio/modules/*.{a,la}
	rm ${PREFIX}/lib/gvfs/*.{a,la}

.include <bsd.port.mk>
