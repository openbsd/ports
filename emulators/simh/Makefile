# $OpenBSD: Makefile,v 1.29 2002/10/26 12:52:48 naddy Exp $
# $NetBSD: Makefile,v 1.2 1998/08/23 20:48:03 frueauf Exp $

COMMENT=		"PDP, IBM 1401, Nova and other CPUs simulator"

DISTNAME=		simh-2.9.10
CATEGORIES=		emulators

MASTER_SITES=		http://simh.trailing-edge.com/sources/
DISTFILES=		simhv29-10.zip

HOMEPAGE=		http://simh.trailing-edge.com/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=		${WRKDIR}

UNZIP=			unzip -a

COPTS=			-DUSE_SOCKLEN_T

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "sparc64"
COPTS+=			-O0
.endif

NO_REGRESS=		Yes

SIMS=			altair altairz80 eclipse h316 hp2100 i1401 nova pdp1 \
			pdp10 pdp11 pdp15 pdp4 pdp7 pdp8 pdp9 s3 vax

pre-build:
	@mkdir ${WRKDIST}/BIN

do-install:
.for f in ${SIMS}
	${INSTALL_PROGRAM} ${WRKBUILD}/BIN/${f} ${PREFIX}/bin/simh-${f}
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/lib/simh
	${INSTALL_DATA_DIR} ${PREFIX}/lib/simh/vax
	${INSTALL_DATA} ${WRKDIST}/VAX/ka655.bin ${PREFIX}/lib/simh/vax
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/simh
	${INSTALL_DATA} ${WRKBUILD}/*.txt ${WRKBUILD}/*/*.txt \
		${PREFIX}/share/doc/simh

.include <bsd.port.mk>
