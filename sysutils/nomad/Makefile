# $OpenBSD: Makefile,v 1.38 2021/06/25 16:14:20 ajacoutot Exp $

BROKEN-aarch64=	old kr/pty doesn't support OpenBSD arm arches; needs creack/pty@v1.1.11
BROKEN-armv7=	old kr/pty doesn't support OpenBSD arm arches; needs creack/pty@v1.1.11

# bunch of undefined things in crypto/blake2b, shirou/gopsutil/disk, shirou/gopsutil/mem
NOT_FOR_ARCHS=		i386

COMMENT=		cluster scheduler

GH_TAGNAME=		v1.1.2
GH_ACCOUNT=		hashicorp
GH_PROJECT=		nomad

CATEGORIES=		sysutils

HOMEPAGE=		https://www.nomadproject.io

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>
# MPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c pthread

MODULES=		lang/go

post-extract:
	cp ${FILESDIR}/*.go ${WRKDIST}/helper/freeport

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nomad
	${SUBST_CMD} -c -m 0640 ${FILESDIR}/nomad.hcl \
		${PREFIX}/share/examples/nomad/nomad.hcl

.include <bsd.port.mk>
