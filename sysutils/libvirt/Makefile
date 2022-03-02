# $OpenBSD: Makefile,v 1.93 2022/03/02 07:25:36 ajacoutot Exp $

COMMENT=		tool/library for managing platform virtualization

DISTNAME=		libvirt-8.1.0

CATEGORIES=		sysutils devel emulators

SHARED_LIBS += virt                      2.4 # 0.8001.0
SHARED_LIBS += virt-qemu                 2.3 # 0.8001.0
SHARED_LIBS += virt-lxc                  2.2 # 0.8001.0
SHARED_LIBS += virt-admin                2.2 # 0.8001.0

HOMEPAGE=		https://libvirt.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += c curl gio-2.0 glib-2.0 gnutls gobject-2.0 intl m pthread
WANTLIB += sasl2 ssh2 util xml2 yajl

MASTER_SITES=		https://libvirt.org/sources/
EXTRACT_SUFX=		.tar.xz

# "#error You need at least GCC v4.8 to compile libvirt"
COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

MODULES=		devel/meson

BUILD_DEPENDS=		devel/gettext,-tools

# rst2html-3
MODULES +=		lang/python
MODPY_RUNDEP=		No
BUILD_DEPENDS +=	textproc/py-docutils${MODPY_FLAVOR}

# xsltproc(1)
BUILD_DEPENDS +=	textproc/libxslt

LIB_DEPENDS=		devel/glib2 \
			devel/libyajl \
			net/curl \
			security/cyrus-sasl2 \
			security/gnutls \
			security/libssh2 \
			textproc/libxml

# OpenBSD can't act as a virtualization host, so we should disable libvirtd but
# but need it for qemu client support; we do not provide an rc.d script for
# libvirtd, virtlogd etc.
# do NOT enforce dependency on qemu since it brings lots of dependencies
#RUN_DEPENDS +=		emulators/qemu

# disable until proven useful
#.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
#RUN_DEPENDS +=		sysutils/dmidecode
#.endif

# -DFOO = XXX missing/bogus checks
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include \
				-DAI_V4MAPPED=0 \
				-DHAVE_STRUCT_SOCKPEERCRED=1" \
			LDFLAGS="-L${LOCALBASE}/lib"

DISABLED_FEATURES=	wireshark_dissector apparmor attr audit capng fuse \
			glusterfs libiscsi libpcap polkit netcf numactl numad \
			openwsman selinux_mount selinux udev readline \
			driver_bhyve driver_hyperv driver_interface \
			driver_libxl driver_lxc driver_openvz driver_vz \
			secdriver_apparmor secdriver_selinux \
			login_shell driver_network nss sysctl_config \
			git_werror libnl apparmor_profiles sanlock firewalld \
			firewalld_zone

# storage
DISABLED_FEATURES +=	storage_disk storage_fs storage_gluster storage_iscsi \
			storage_iscsi_direct storage_lvm storage_mpath \
			storage_rbd storage_sheepdog storage_vstorage \
			storage_zfs

CONFIGURE_ARGS=		-Dinit_script=none

.for _d in ${DISABLED_FEATURES}
CONFIGURE_ARGS +=	-D${_d}=disabled
.endfor

# needs readline support
CONFIGURE_ARGS +=	-Dbash_completion=disabled

# prefer libssh2
CONFIGURE_ARGS +=	-Dlibssh=disabled

# our sysutils/e2fsprogs is too old (<2.17)
CONFIGURE_ARGS +=	-Dblkid=disabled

DEBUG_PACKAGES=		${BUILD_PACKAGES}

pre-configure:
	cd ${WRKDIR}/bin && ln -sf ${LOCALBASE}/bin/rst2html-3 rst2html5

post-install:
	rm -rf ${WRKINST}/var/{cache/libvirt,lib}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	mv ${WRKINST}${SYSCONFDIR}/libvirt ${PREFIX}/share/examples/
	mv ${WRKINST}${SYSCONFDIR}/sasl2 ${PREFIX}/share/examples/libvirt/
	rm -rf ${WRKINST}${SYSCONFDIR}/logrotate.d ${WRKINST}/var/{log,run}

.include <bsd.port.mk>
