# Icon library port
# $OpenBSD: Makefile,v 1.28 2013/11/03 14:33:54 espie Exp $

COMMENT-main =	useful and interesting programs for Icon
COMMENT-x11 =	useful and interesting graphics program for Icon

VERSION	=	9.5.1
DISTNAME =	icon-v951src
PKGNAME =	icon-lib-${VERSION}
PKGNAME-main =	${PKGNAME}
PKGNAME-x11 =	icon-xlib-${VERSION}
DISTFILES =	icon-v951src.tgz

CATEGORIES =	lang

MAINTAINER =	Marc Espie <espie@openbsd.org>

# Public domain
PERMIT_PACKAGE_CDROM =	Yes

WRKDIST =	${WRKDIR}/${DISTNAME}/ipl

BUILD_DEPENDS =	${INTERP}
RUN_DEPENDS-main =	${INTERP}
RUN_DEPENDS-x11 =	icon-interp-*-!no_x11:lang/icon/interp


# temporary values for building programs
IPATH =		${WRKSRC}/gprocs:${WRKSRC}/procs:${LOCALBASE}/share/ipl/ucode
LPATH =		${WRKSRC}/gincl:${WRKSRC}/incl
BUILDENV =	IPATH="${IPATH}"  LPATH="${LPATH}"; export IPATH LPATH;

IPL =		${PREFIX}/share/ipl
MULTI_PACKAGES =	-main -x11
PSEUDO_FLAVORS =	no_x11
FLAVOR ?=

.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-x11}
INTERP =	lang/icon/interp>=${VERSION}
.else
INTERP =	lang/icon/interp,no_x11>=${VERSION}
.endif

NO_TEST =	Yes

do-build:
# first build library
	${BUILDENV} cd ${WRKSRC}/procs && icont -usc *.icn
.if ${BUILD_PACKAGES:M-x11}
	${BUILDENV} cd ${WRKSRC}/gprocs && icont -usc *.icn
.endif
# then build programs using library
	${BUILDENV} cd ${WRKSRC}/progs && for i in *.icn; do icont -us $$i; done
.if ${BUILD_PACKAGES:M-x11}
	${BUILDENV} cd ${WRKSRC}/gprogs && for i in *.icn; do icont -us $$i; done
.endif
# finally build some supplementary packages
.if ${BUILD_PACKAGES:M-x11}
	${BUILDENV} cd ${WRKSRC}/gpacks/vib && ${MAKE}
	${BUILDENV} cd ${WRKSRC}/gpacks/xtiles && icont -s xtiles.icn
.endif


do-install:
	${INSTALL_DATA_DIR} ${IPL}/ucode
	${INSTALL_DATA} ${WRKSRC}/procs/*.u[12] ${IPL}/ucode
	${INSTALL_DATA_DIR} ${IPL}/incl
	${INSTALL_DATA} ${WRKSRC}/incl/* ${IPL}/incl
	${INSTALL_PROGRAM_DIR} ${IPL}/bin
.if ${BUILD_PACKAGES:M-x11}
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
