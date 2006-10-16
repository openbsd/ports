# Icon library port
# $OpenBSD: Makefile,v 1.19 2006/10/16 10:01:55 espie Exp $

COMMENT=	"useful and interesting programs for Icon"

VERSION=9.4.3
DISTNAME=	icon.v943src
PKGNAME=	icon-lib-${VERSION}
#DIST_SUBDIR=icon/${VERSION}
DISTFILES=	icon.v943src.tgz

CATEGORIES=lang

MAINTAINER=	Marc Espie <espie@openbsd.org>
# PD
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes

WRKDIST=${WRKDIR}/${DISTNAME}/ipl
# if you really want, the ipl.tgz file holds precompiled u1/u2 files
# however, you will still have to grab the source for the necessary
# includes, especially for the graphics API.
# Anyway, since source is available, using pre-compiled binaries is not
# OpenBSD policy...

#MASTER_SITES=ftp://ftp.cs.arizona.edu/icon/library/
#DISTFILES=bipl.tgz info.tgz
#SUPDISTFILES=gipl.tgz
#WRKDIST=	${WRKDIR}

BUILD_DEPENDS=::lang/icon/interp
RUN_DEPENDS=::lang/icon/interp

# temporary values for building programs
IPATH=${WRKSRC}/gprocs:${WRKSRC}/procs:${LOCALBASE}/share/ipl/ucode
LPATH=${WRKSRC}/gincl:${WRKSRC}/incl
BUILDENV=IPATH="${IPATH}"  LPATH="${LPATH}"; export IPATH LPATH;

IPL=${PREFIX}/share/ipl
FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
PATCH_LIST=patch-progs*
.endif

do-build:
# first build library
	${BUILDENV} cd ${WRKSRC}/procs && icont -usc *.icn
.if empty(FLAVOR:L:Mno_x11)
	${BUILDENV} cd ${WRKSRC}/gprocs && icont -usc *.icn
.endif
# then build programs using library
	${BUILDENV} cd ${WRKSRC}/progs && for i in *.icn; do icont -us $$i; done
.if empty(FLAVOR:L:Mno_x11)
	${BUILDENV} cd ${WRKSRC}/gprogs && for i in *.icn; do icont -us $$i; done
.endif
# finally build some supplementary packages
.if empty(FLAVOR:L:Mno_x11)
	${BUILDENV} cd ${WRKSRC}/gpacks/vib && ${MAKE}
	${BUILDENV} cd ${WRKSRC}/gpacks/xtiles && icont -s xtiles.icn
.endif

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${IPL}/ucode
	${INSTALL_DATA} ${WRKSRC}/procs/*.u[12] ${IPL}/ucode
	${INSTALL_DATA_DIR} ${IPL}/incl
	${INSTALL_DATA} ${WRKSRC}/incl/* ${IPL}/incl
	${INSTALL_PROGRAM_DIR} ${IPL}/bin
.if empty(FLAVOR:L:Mno_x11)
	${INSTALL_DATA} ${WRKSRC}/gprocs/*.u[12] ${IPL}/ucode
	${INSTALL_DATA_DIR} ${IPL}/gincl
	${INSTALL_DATA} ${WRKSRC}/gincl/* ${IPL}/gincl
	${INSTALL_PROGRAM} ${WRKSRC}/gpacks/vib/vib ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/gpacks/xtiles/xtiles ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/gpacks/xtiles/xtiles.6 ${PREFIX}/man/man6
.endif

# we separate icon sample program from the rest of the world, especially
# as we can share them between architectures
	find ${WRKSRC}/progs -type f -perm -a+x -exec ${INSTALL_SCRIPT} {} ${IPL}/bin \;
	-find ${WRKSRC}/gprogs -type f -perm -a+x -exec ${INSTALL_SCRIPT} {} ${IPL}/bin \;

.include <bsd.port.mk>
