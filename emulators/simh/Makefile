# $OpenBSD: Makefile,v 1.52 2006/01/12 11:40:13 espie Exp $
# $NetBSD: Makefile,v 1.2 1998/08/23 20:48:03 frueauf Exp $

COMMENT=		"PDP, IBM 1401, Nova and other CPUs simulator"

DISTNAME=		simh-3.5.1
PKGNAME=		$(DISTNAME)p1
CATEGORIES=		emulators
MASTER_SITES=		http://simh.trailing-edge.com/sources/
DISTFILES=		simhv35-1.zip

HOMEPAGE=		http://simh.trailing-edge.com/

MAINTAINER=		Federico G. Schwindt <fgsch@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m pcap

WRKDIST=		${WRKDIR}

UNZIP=			unzip -a -o

COPTS+=			-DPATH_KA655X_BIN=\"${PREFIX}/lib/simh/vax/ka655x.bin\"
MAKE_FILE=		makefile

NO_REGRESS=		Yes
VMEM_WARNING=		Yes

pre-build:
	@mkdir -p ${WRKBUILD}/BIN

do-install:
	@cd ${WRKBUILD}/BIN && for f in `echo *`; do \
	    ${INSTALL_PROGRAM} $${f} ${PREFIX}/bin/simh-$${f}; \
	done;
	${INSTALL_DATA_DIR} ${PREFIX}/lib/simh/vax
	${INSTALL_DATA} ${WRKDIST}/VAX/ka655.bin ${PREFIX}/lib/simh/vax
	${INSTALL_DATA} ${WRKDIST}/VAX/ka655x.bin ${PREFIX}/lib/simh/vax
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/simh
	${INSTALL_DATA} ${WRKBUILD}/*.txt ${WRKBUILD}/*/*.txt \
	    ${PREFIX}/share/doc/simh

.include <bsd.port.mk>
