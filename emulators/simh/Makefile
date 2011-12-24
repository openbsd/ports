# $OpenBSD: Makefile,v 1.72 2011/12/24 12:57:10 sthen Exp $
# $NetBSD: Makefile,v 1.2 1998/08/23 20:48:03 frueauf Exp $

COMMENT=		PDP, IBM 1401, Nova and other CPUs simulator

PKGNAME=		simh-3.8.1
DISTNAME=		simhv38-1
REVISION=		6
CATEGORIES=		emulators
MASTER_SITES=		${HOMEPAGE}/sources/

HOMEPAGE=		http://simh.trailing-edge.com/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m pcap

WRKDIST=		${WRKDIR}
EXTRACT_SUFX=		.zip
MASTER_SITES0=		http://spacehopper.org/mirrors/
# Files from http://simh.trailing-edge.com/interim.html repackaged as a diff
PATCHFILES=		simh-3.8.1-interim.diff:0

UNZIP=			unzip -a -o

COPTS+=		-DPATH_KA655X_BIN=\"${PREFIX}/lib/simh/vax/ka655x.bin\" \
		-DPATH_VMB_EXE=\"${PREFIX}/lib/simh/vax/vmb.exe\"

MAKE_FILE=		makefile
MAKE_FLAGS=		CC="${CC}"

NO_REGRESS=		Yes
VMEM_WARNING=		Yes

pre-build:
	@mkdir -p ${WRKBUILD}/BIN

do-install:
	@cd ${WRKBUILD}/BIN && for f in `echo *`; do \
	    ${INSTALL_PROGRAM} $${f} ${PREFIX}/bin/simh-$${f}; \
	done;
	${INSTALL_DATA_DIR} ${PREFIX}/lib/simh/vax
	${INSTALL_DATA} ${WRKDIST}/VAX/ka655x.bin ${PREFIX}/lib/simh/vax
	${INSTALL_DATA} ${WRKDIST}/VAX/vmb.exe ${PREFIX}/lib/simh/vax
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/simh
	${INSTALL_DATA} ${WRKBUILD}/*.txt ${WRKBUILD}/*/*.txt \
	    ${PREFIX}/share/doc/simh

.include <bsd.port.mk>
