# $OpenBSD: Makefile,v 1.176 2017/11/09 19:44:12 landry Exp $

COMMENT-main=		GNOME Virtual File System
COMMENT-smb=		GVFS mount module for samba
COMMENT-goa=		GVFS volume monitor for gnome-online-account
COMMENT-nfs=		GVFS mount module for NFS
COMMENT-google=		GVFS mount module for Google Drive

GNOME_PROJECT=		gvfs
GNOME_VERSION=		1.34.1

PKGNAME-main=		${DISTNAME}
PKGNAME-smb=		${GNOME_PROJECT}-smb-${GNOME_VERSION}
PKGNAME-goa=		${GNOME_PROJECT}-goa-${GNOME_VERSION}
PKGNAME-nfs=		${GNOME_PROJECT}-nfs-${GNOME_VERSION}
PKGNAME-google=		${GNOME_PROJECT}-google-${GNOME_VERSION}
REVISION-google=	0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/dconf \
			x11/gnome

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 pcre
WANTLIB += pthread util z iconv intl

WANTLIB-main +=	${WANTLIB}
WANTLIB-main += archive avahi-client avahi-common avahi-glib bz2 crypto
WANTLIB-main += dbus-1 expat gck-1 gcr-base-3 gcrypt gpg-error gthread-2.0
WANTLIB-main += lz4 lzma m p11-kit secret-1 soup-2.4 sqlite3 xml2

WANTLIB-smb += ${WANTLIB}
WANTLIB-smb += crypto dcerpc-binding execinfo gcrypt samba-errors
WANTLIB-smb += gmp gnutls gpg-error gthread-2.0 hogweed iconv idn2
WANTLIB-smb += intl lber-2.4 ldap-2.4 ldb ndr ndr-krb5pac ndr-nbt
WANTLIB-smb += ndr-standard nettle p11-kit replace samba-credentials
WANTLIB-smb += samba-hostconfig samba-util samdb sasl2 smbclient smbconf
WANTLIB-smb += ssl talloc tasn1 tdb tevent tevent-util util-setid
WANTLIB-smb += wbclient gck-1 gcr-base-3 secret-1 unistring
WANTLIB-smb += lib/samba/asn1-samba4
WANTLIB-smb += lib/samba/com_err-samba4
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
WANTLIB-nfs += gcrypt gpg-error gthread-2.0 iconv intl nfs secret-1
WANTLIB-nfs += gck-1 gcr-base-3 p11-kit

WANTLIB-google += ${WANTLIB}
WANTLIB-google += crypto curl gck-1 gcr-base-3 gcrypt gdata goa-1.0 gpg-error
WANTLIB-google += gthread-2.0 iconv intl json-glib-1.0 lzma m nghttp2
WANTLIB-google += nspr4 nss3 oauth p11-kit plc4 plds4 secret-1 smime3
WANTLIB-google += nssutil3 soup-2.4 sqlite3 ssl ssl3 xml2

MODGNOME_TOOLS=		docbook

LIB_DEPENDS-main=	archivers/libarchive \
			devel/libsoup \
			net/avahi \
			x11/gnome/gcr \
			x11/gnome/libsecret

RUN_DEPENDS-smb=	${MODDCONF_RUN_DEPENDS} \
			${BASE_PKGPATH},-main=${GNOME_VERSION}
LIB_DEPENDS-smb=	net/samba

RUN_DEPENDS-goa=	${BASE_PKGPATH},-main=${GNOME_VERSION}
LIB_DEPENDS-goa=	x11/gnome/online-accounts

RUN_DEPENDS-nfs=	${BASE_PKGPATH},-main=${GNOME_VERSION}
LIB_DEPENDS-nfs=	devel/libnfs \
			x11/gnome/libsecret

RUN_DEPENDS-google=	${BASE_PKGPATH},-main=${GNOME_VERSION}
LIB_DEPENDS-google=	devel/libgdata \
			x11/gnome/online-accounts

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--disable-libsystemd-login \
			--disable-cdda \
			--disable-bluray \
			--disable-afc \
			--disable-gudev \
			--disable-udev \
			--disable-gdu

# needs gudev
CONFIGURE_ARGS +=	--disable-libmtp \
			--disable-libusb

# needs libcap
CONFIGURE_ARGS +=	--disable-admin

# needs sysctl kern.usermount to be really useful
CONFIGURE_ARGS +=	--disable-fuse

MULTI_PACKAGES=		-main -goa -nfs -smb -google

PSEUDO_FLAVORS=		no_smb no_goa no_nfs no_google bootstrap
FLAVOR?=		no_smb no_goa no_nfs no_google bootstrap

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

.if !${BUILD_PACKAGES:M-google}
CONFIGURE_ARGS +=	--disable-google
.endif

# test_polkitd.py, gvfs-test
TEST_DEPENDS=		devel/py-gobject3

post-install:
	rm ${PREFIX}/lib/gio/modules/*.{a,la}
	rm ${PREFIX}/lib/gvfs/*.{a,la}
# --disable-admin	
	rm -rf ${PREFIX}/share/polkit-1

.include <bsd.port.mk>
