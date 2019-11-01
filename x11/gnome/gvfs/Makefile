# $OpenBSD: Makefile,v 1.191 2019/11/01 19:40:41 ajacoutot Exp $

COMMENT-main=		GNOME Virtual File System
COMMENT-smb=		GVFS mount module for samba
COMMENT-goa=		GVFS volume monitor for gnome-online-account
COMMENT-nfs=		GVFS mount module for NFS
COMMENT-google=		GVFS mount module for Google Drive

GNOME_PROJECT=		gvfs
GNOME_VERSION=		1.42.1

PKGNAME-main=		${DISTNAME}
PKGNAME-smb=		${GNOME_PROJECT}-smb-${GNOME_VERSION}
PKGNAME-goa=		${GNOME_PROJECT}-goa-${GNOME_VERSION}
PKGNAME-nfs=		${GNOME_PROJECT}-nfs-${GNOME_VERSION}
PKGNAME-google=		${GNOME_PROJECT}-google-${GNOME_VERSION}

# LGPLv2
PERMIT_PACKAGE=		Yes

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

# make sure to regen WANTLIB on ld.lld arches (-Wl,--as-needed)
WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 intl

WANTLIB-main +=	${WANTLIB}
WANTLIB-main += archive avahi-client avahi-common avahi-glib gcr-base-3
WANTLIB-main += gcrypt secret-1 soup-2.4 util xml2

WANTLIB-smb += ${WANTLIB}
WANTLIB-smb += smbclient

WANTLIB-goa += ${WANTLIB}
WANTLIB-goa += goa-1.0

WANTLIB-nfs += ${WANTLIB}
WANTLIB-nfs += nfs

WANTLIB-google += ${WANTLIB}
WANTLIB-google += gdata goa-1.0

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
LIB_DEPENDS-nfs=	devel/libnfs

RUN_DEPENDS-google=	${BASE_PKGPATH},-main=${GNOME_VERSION}
LIB_DEPENDS-google=	devel/libgdata \
			x11/gnome/online-accounts

CONFIGURE_ARGS=		-Ddeprecated_programs=true \
			-Dman=true

# most of these need gudev and/or systemd
CONFIGURE_ARGS +=	-Dafc=false \
			-Dcdda=false \
			-Dgphoto2=false \
			-Dmtp=false \
			-Dlibusb=false \
			-Dudisks2=false \
			-Dbluray=false \
			-Dgudev=false \
			-Dlogind=false \
			-Dsystemduserunitdir=no \
			-Dtmpfilesdir=no

# needs libcap
CONFIGURE_ARGS +=	-Dadmin=false

# needs sysctl kern.usermount to be really useful
CONFIGURE_ARGS +=	-Dfuse=false

MULTI_PACKAGES=		-main -goa -nfs -smb -google

PSEUDO_FLAVORS=		no_smb no_goa no_nfs no_google bootstrap
FLAVOR?=		no_smb no_goa no_nfs no_google bootstrap

.include <bsd.port.arch.mk>

# disable meson's default of using "-Wl,--as-needed" on ld.bfd arches;
# build failures due to undefined references are often seen.
.if !${PROPERTIES:Mlld}
CONFIGURE_ARGS +=	-Db_asneeded=false
.endif

.if !${BUILD_PACKAGES:M-smb}
CONFIGURE_ARGS +=	-Dsmb=false
.endif

.if !${BUILD_PACKAGES:M-goa}
CONFIGURE_ARGS +=	-Dgoa=false
.endif

.if !${BUILD_PACKAGES:M-nfs}
CONFIGURE_ARGS +=	-Dnfs=false
.endif

.if !${BUILD_PACKAGES:M-google}
CONFIGURE_ARGS +=	-Dgoogle=false
.endif

# test_polkitd.py, gvfs-test
TEST_DEPENDS=		devel/py-gobject3

# -Dadmin=false
post-install:
	rm -rf ${PREFIX}/share/polkit-1

.include <bsd.port.mk>
