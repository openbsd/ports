# $OpenBSD: Makefile,v 1.4 2019/01/28 10:40:42 ajacoutot Exp $

# bunch of undefined things in crypto/blake2b, shirou/gopsutil/disk, shirou/gopsutil/mem
NOT_FOR_ARCHS=		i386

COMMENT=		cluster scheduler

GH_TAGNAME=		v0.8.7
GH_ACCOUNT=		hashicorp
GH_PROJECT=		nomad

MASTER_SITES0=		https://github.com/hashicorp/nomad/commit/
PATCHFILES=		29364770669d8aa16e7aa1a8cef14f79665920ce.patch:0
PATCH_DIST_STRIP=	-p1

CATEGORIES=		sysutils

HOMEPAGE=		https://www.nomadproject.io

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

MODULES=		lang/go

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nomad
	${SUBST_CMD} -c -m 0640 ${FILESDIR}/nomad.hcl \
		${PREFIX}/share/examples/nomad/nomad.hcl

.include <bsd.port.mk>
