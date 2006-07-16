# $OpenBSD: Makefile,v 1.9 2006/07/16 15:13:27 mcbride Exp $

ONLY_FOR_ARCHS= i386

COMMENT=	"VMware emulator"
DISTNAME=	VMware-workstation-3.2.1-2242
PKGNAME=	vmware-3.2.1_2242p4
CATEGORIES=	emulators
MASTER_SITES=	http://download3.vmware.com/software/wkst/
MASTER_SITES0=	http://monkey.org/~marius/vmware-openbsd/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		vmware-openbsd-1.3${EXTRACT_SUFX}:0

HOMEPAGE=	http://www.vmware.com/

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

# Restrictive
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
WANTLIB=		c

#NO_BUILD=	Yes
NO_REGRESS=	Yes
USE_X11=	Yes

BUILD_DEPENDS+=	::emulators/redhat/base
RUN_DEPENDS+=	${BUILD_DEPENDS}

WRKDIST=	${WRKDIR}/vmware-openbsd
VMWARE_DISTRIB=	${WRKDIR}/vmware-distrib

LIB_DATA_DIRS=	configurator \
		isoimages \
		messages/chef \
		messages/ja \
		messages/jive \
		smb/codepages \
		help \
		xkeymap

post-patch:
	@chmod 755 ${VMWARE_DISTRIB}/bin/vmware
	@if [ x`sysctl -n kern.emul.linux` = x1 ]; then \
		${WRKDIST}/vmware-any-any-update37/update ${VMWARE_DISTRIB}/bin/vmware; \
	else \
		echo "need to set kern.emul.linux=1"; \
		exit 1; \
	fi

do-configure:
	@perl -pi -e 's|_PREFIX_|${PREFIX}|g' ${WRKSRC}/util/vmware-run.c

pre-install:
	@sed -e "s|@PREFIX@|${TRUEPREFIX}|g" ${FILESDIR}/vmware-modules.sh > \
		${WRKBUILD}/vmware-modules.sh

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/vmware
	${INSTALL_PROGRAM_DIR} ${PREFIX}/lib/vmware/bin
	${INSTALL_SCRIPT} ${VMWARE_DISTRIB}/bin/vmware \
		${PREFIX}/lib/vmware/bin
	${INSTALL_SCRIPT} ${VMWARE_DISTRIB}/bin/vmnet-netifup ${PREFIX}/bin
	${INSTALL_SCRIPT} ${VMWARE_DISTRIB}/lib/bin/* ${PREFIX}/lib/vmware/bin
	@sed -e "s|@PREFIX@|${TRUEPREFIX}|g" ${FILESDIR}/vmware.sh > \
		${PREFIX}/bin/vmware
	@chown ${BINOWN} ${PREFIX}/bin/vmware
	@chgrp ${BINGRP} ${PREFIX}/bin/vmware
	@chmod ${BINMODE} ${PREFIX}/bin/vmware
	${INSTALL_DATA_DIR} ${PREFIX}/lib/vmware/licenses/{site,user}
.for d in ${LIB_DATA_DIRS}
	${INSTALL_DATA_DIR} ${PREFIX}/lib/vmware/${d}
	${INSTALL_DATA} ${VMWARE_DISTRIB}/lib/${d}/* ${PREFIX}/lib/vmware/${d}
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vmware
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vmware
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD ${PREFIX}/share/doc/vmware
	@sed -e "s|@PREFIX@|${TRUEPREFIX}|g" ${FILESDIR}/config > \
		${PREFIX}/share/examples/vmware/config

	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vmware
	${INSTALL_DATA_DIR} ${PREFIX}/lib/vmware/modules
	${INSTALL_DATA_DIR} ${PREFIX}/lib/vmware/bin
	${INSTALL_DATA_DIR} ${PREFIX}/libexec
	${INSTALL_DATA} ${WRKBUILD}/README \
		${PREFIX}/share/doc/vmware/README.NetBSD
	${INSTALL_DATA} ${WRKBUILD}/README.OpenBSD \
		${PREFIX}/share/doc/vmware/README.OpenBSD.Modules
	${INSTALL_DATA} ${WRKBUILD}/source/linuxrtc/linuxrtc.o \
		${WRKBUILD}/source/vmmon/vmmon.o \
		${WRKBUILD}/source/vmnet/if_hub.o \
		${PREFIX}/lib/vmware/modules
	${INSTALL_PROGRAM} ${WRKBUILD}/vmware-any-any-update37/update \
		${PREFIX}/lib/vmware/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/util/vmware-run ${PREFIX}/lib/vmware/bin
	${INSTALL_SCRIPT} ${WRKBUILD}/source/linuxrtc/linuxrtc_post.sh \
		${PREFIX}/libexec/vmware-linuxrtc_load.sh
	${INSTALL_SCRIPT} ${WRKBUILD}/source/vmmon/vmmon_post.sh \
		${PREFIX}/libexec/vmware-vmmon_load.sh
	${INSTALL_SCRIPT} ${WRKBUILD}/source/vmnet/if_hub_post.sh \
		${PREFIX}/libexec/vmware-vmnet_load.sh
.for S in linuxrtc vmmon vmnet
	${INSTALL_SCRIPT} ${FILESDIR}/vmware-${S}_unload.sh \
		${PREFIX}/libexec
.endfor
	${INSTALL_SCRIPT} ${WRKBUILD}/vmware-modules.sh \
		${PREFIX}/bin/vmware-modules
		
.include <bsd.port.mk>
