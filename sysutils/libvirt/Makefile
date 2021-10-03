# $OpenBSD: Makefile,v 1.85 2021/10/03 19:53:21 ajacoutot Exp $

COMMENT=		tool/library for managing platform virtualization

DISTNAME=		libvirt-7.8.0

CATEGORIES=		sysutils devel emulators

SHARED_LIBS += virt                      2.3 # 0.7008.0
SHARED_LIBS += virt-qemu                 2.2 # 0.7008.0
SHARED_LIBS += virt-lxc                  2.1 # 0.7008.0
SHARED_LIBS += virt-admin                2.1 # 0.7008.0

HOMEPAGE=		https://libvirt.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += c curl gio-2.0 glib-2.0 gnutls gobject-2.0 intl m pthread
WANTLIB += util xml2 yajl

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
			security/gnutls \
			textproc/libxml

# disable until proven useful
#.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
#RUN_DEPENDS +=		sysutils/dmidecode
#.endif

# -DFOO = XXX missing/bogus checks
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include \
				-DAI_V4MAPPED=0 \
				-DHAVE_STRUCT_SOCKPEERCRED=1 \
				-DHAVE_DLFCN_H=1" \
			LDFLAGS="-L${LOCALBASE}/lib"

DISABLED_FEATURES=	wireshark_dissector apparmor attr audit capng fuse \
			glusterfs libiscsi libpcap polkit netcf numactl numad \
			openwsman selinux_mount selinux udev readline \
			driver_bhyve driver_hyperv driver_interface \
			driver_libxl driver_lxc driver_openvz driver_vz \
			driver_qemu secdriver_apparmor secdriver_selinux \
			login_shell driver_network nss sysctl_config \
			git_werror libnl apparmor_profiles sanlock firewalld \
			firewalld_zone driver_remote

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

# OpenBSD can't act as a virtualization host, so no need for libvirtd.
# If support is added, subtitute /var/lib/{xen,virt,libvirt,...} with /var/db
# and add the following lines to pkg/PLIST:
# @sample /var/db/libvirt/
# @sample /var/db/libvirt/boot/
# @sample /var/db/libvirt/filesystems/
# @sample /var/db/libvirt/images/
#
# nwfilters are only used by libvirtd, which is (currently) disabled on OpenBSD.
CONFIGURE_ARGS +=	-Ddriver_libvirtd=disabled

pre-configure:
	cd ${WRKDIR}/bin && ln -sf ${LOCALBASE}/bin/rst2html-3 rst2html5

post-install:
	rm -rf ${WRKINST}/var/{cache/libvirt,lib}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	mv ${WRKINST}${SYSCONFDIR}/libvirt ${PREFIX}/share/examples/

.include <bsd.port.mk>
