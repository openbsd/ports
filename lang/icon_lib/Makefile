# Icon library port
# $OpenBSD: Makefile,v 1.2 1998/10/13 15:01:45 espie Exp $

DISTNAME=icon_lib-9.3.1
DIST_SUBDIR=icon

CATEGORIES=lang

MAINTAINER=espie@openbsd.org

# if you really want, the ipl.tgz file holds precompiled u1/u2 files
# however, you will still have to grab the source for the necessary
# includes, especially for the graphics API.
# Anyway, since source is available, using pre-compiled binaries is not
# OpenBSD policy...

MASTER_SITES=
DISTFILES=bipl.tgz gipl.tgz info.tgz
USE_X11=yes
WRKSRC=${WRKDIR}

MASTER_SITES=ftp://ftp.cs.arizona.edu:/icon/library/

BUILD_DEPENDS=${PREFIX}/bin/icont:${PORTSDIR}/lang/icon

# temporary values for building programs
IPATH=${WRKSRC}/gprocs ${WRKSRC}/procs
LPATH=${WRKSRC}/gincl ${WRKSRC}/incl
BUILDENV=IPATH="${IPATH}"  LPATH="${LPATH}"; export IPATH LPATH;

IPL=${PREFIX}/share/ipl

do-build:
# first build library
	${BUILDENV} cd ${WRKSRC} && /bin/sh Ucode && /bin/sh Ugcode
# then build programs using library
	${BUILDENV} cd ${WRKSRC} && /bin/sh Icode && /bin/sh Igcode
# finally build some supplementary packages
	${BUILDENV} cd ${WRKSRC}/gpacks/vib && make
	${BUILDENV} cd ${WRKSRC}/gpacks/xtiles && icont xtiles.icn

do-install:
	${INSTALL_DATA_DIR} ${IPL}/ucode
	${INSTALL_DATA} ${WRKSRC}/procs/*.u[12] ${IPL}/ucode
	${INSTALL_DATA} ${WRKSRC}/gprocs/*.u[12] ${IPL}/ucode
	${INSTALL_DATA_DIR} ${IPL}/incl
	${INSTALL_DATA} ${WRKSRC}/incl/* ${IPL}/incl
	${INSTALL_DATA_DIR} ${IPL}/gincl
	${INSTALL_DATA} ${WRKSRC}/gincl/* ${IPL}/gincl
	${INSTALL_PROGRAM_DIR} ${IPL}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/gpacks/vib/vib ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/gpacks/xtiles/xtiles ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/gpacks/xtiles/xtiles.6 ${PREFIX}/man/man6

# we separate icon sample program from the rest of the world, especially
# as we can share them between architectures
	find ${WRKSRC}/progs -type f -perm -a+x -exec ${INSTALL_SCRIPT} {} ${IPL}/bin \;
	find ${WRKSRC}/gprogs -type f -perm -a+x -exec ${INSTALL_SCRIPT} {} ${IPL}/bin \;

.include <bsd.port.mk>
