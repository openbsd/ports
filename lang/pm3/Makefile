# $OpenBSD: Makefile,v 1.7 2006/10/21 09:42:32 naddy Exp $

CATEGORIES=	lang
ONLY_FOR_ARCHS=	i386
BROKEN=		"stat() API change"

COMMENT="Polytechnique Montreal Modula-3"
PERMIT_PACKAGE_FTP=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_DISTFILES_CDROM=Yes

V=1.1.15
DISTNAME=	pm3-$V
MAINTAINER=	Marc Espie <espie@openbsd.org>

DISTFILES=	pm3-$V-src.tgz pm3-${V}a-OpenBSD_386-boot.tgz:1
PATCHFILES=	pm3-$V-BSD.patch-v1.2.gz:0

EXTRACT_ONLY=pm3-$V-src.tgz

MASTER_SITES= ftp://m3.polymtl.ca/pub/m3/targzip/
MASTER_SITES0= http://people.freebsd.org/~jdp/pm3-for-bsd/
MASTER_SITES1= http://sites.inka.de/~mips/unix/distfiles/

ALL_TARGET=exportall

HOMEPAGE=	http://m3.polymtl.ca/m3/
USE_GMAKE=	Yes
USE_MOTIF=	any

post-extract:
	@cd ${WRKDIST} && \
	    tar zxf ${FULLDISTDIR}/pm3-${V}a-OpenBSD_386-boot.tgz

PATCH_DIST_STRIP=-p1

WRKINST=${WRKDIST}/binaries/OpenBSD_386

do-install:
	chown -R ${LIBOWN}:${LIBGRP} ${WRKINST}
	-cd ${PREFIX}/pm3/bin && strip *

M3ARCH=OpenBSD_386
M3OPTIONS=-DPREFIX=${PREFIX} -DLOCALBASE=${LOCALBASE} -DX11BASE=${X11BASE}
MAKE_FLAGS=M3OPTIONS="${M3OPTIONS}"
SUBST_VARS=M3ARCH

NO_REGRESS=	Yes

.include <bsd.port.mk>
