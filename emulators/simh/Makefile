# $OpenBSD: Makefile,v 1.36 2003/02/03 08:34:32 fgsch Exp $
# $NetBSD: Makefile,v 1.2 1998/08/23 20:48:03 frueauf Exp $

COMMENT=		"PDP, IBM 1401, Nova and other CPUs simulator"

VER=			2.10-2
DISTNAME=		simh-${VER}
CATEGORIES=		emulators
MASTER_SITES=		http://simh.trailing-edge.com/sources/
DISTFILES=		simhv${VER:S/.//}.zip

HOMEPAGE=		http://simh.trailing-edge.com/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=		${WRKDIR}

UNZIP=			unzip -a -o

COPTS=			-DUSE_SOCKLEN_T
MAKE_FILE=		makefile

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "sparc64"
COPTS+=			-O0
.endif

NO_REGRESS=		Yes
VMEM_WARNING=		Yes

pre-build:
	@mkdir ${WRKBUILD}/BIN

do-install:
	@cd ${WRKBUILD}/BIN && for f in `echo *`; do \
	    ${INSTALL_PROGRAM} $${f} ${PREFIX}/bin/simh-$${f}; \
	done;
	${INSTALL_DATA_DIR} ${PREFIX}/lib/simh/vax
	${INSTALL_DATA} ${WRKDIST}/VAX/ka655.bin ${PREFIX}/lib/simh/vax
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/simh
	${INSTALL_DATA} ${WRKBUILD}/*.txt ${WRKBUILD}/*/*.txt \
	    ${PREFIX}/share/doc/simh

.include <bsd.port.mk>
