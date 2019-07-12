# $OpenBSD: Makefile,v 1.80 2019/07/12 20:46:10 sthen Exp $

COMMENT=		PDP, IBM 1401, Nova and other CPUs simulator

DISTNAME=		simhv39-0
PKGNAME=		simh-3.9.0
REVISION=		2
CATEGORIES=		emulators
MASTER_SITES=		${HOMEPAGE}/sources/
EXTRACT_SUFX=		.zip

HOMEPAGE=		http://simh.trailing-edge.com/

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB=		c m pcap pthread

WRKDIST=		${WRKDIR}

UNZIP=			unzip -a -o

CFLAGS+=		-DPATH_KA655X_BIN=\"${PREFIX}/lib/simh/vax/ka655x.bin\" \
			-DPATH_VMB_EXE=\"${PREFIX}/lib/simh/vax/vmb.exe\"

USE_GMAKE=		Yes
MAKE_FILE=		makefile

MAKE_FLAGS=		GCC="${CC}" USE_NETWORK=1

# makefile magic detects clang does lto, but we don't have the linker
MAKE_FLAGS +=		NO_LTO=1

NO_TEST=		Yes

pre-build:
	@mkdir -p ${WRKBUILD}/BIN

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/simh/vax
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/simh
	@cd ${WRKBUILD}/BIN && for f in `echo *`; do \
	    ${INSTALL_PROGRAM} $${f} ${PREFIX}/bin/simh-$${f}; \
	done;
	${INSTALL_DATA} ${WRKDIST}/VAX/ka655x.bin ${PREFIX}/lib/simh/vax
	${INSTALL_DATA} ${WRKDIST}/VAX/vmb.exe ${PREFIX}/lib/simh/vax
	${INSTALL_DATA} ${WRKBUILD}/*.txt ${WRKBUILD}/*/*.txt \
	    ${PREFIX}/share/doc/simh

.include <bsd.port.mk>
