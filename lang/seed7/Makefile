# $OpenBSD: Makefile,v 1.22 2014/06/16 01:01:42 bcallah Exp $

V =		20140615
COMMENT =	high-level, extensible programming language
DISTNAME =	seed7_05_${V}
PKGNAME =	seed7-${V}
EXTRACT_SUFX =	.tgz
CATEGORIES =	lang

HOMEPAGE =	http://seed7.sourceforge.net/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Interpreter and example programs: GPLv2+
# Runtime libraries: LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 c m ncurses

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=seed7/}

USE_GMAKE =	Yes
MAKE_FLAGS =	CC="${CC}" LDFLAGS="-Wl,--gc-sections -L${X11BASE}/lib"
MAKE_ENV +=	S7_LIB_DIR=${TRUEPREFIX}/lib/seed7/bin \
		SEED7_LIBRARY=${TRUEPREFIX}/lib/seed7/lib
MAKE_FILE =	makefile
ALL_TARGET =	depend s7 s7c make7

CFLAGS +=	-I${X11BASE}/include

WRKDIST =	${WRKDIR}/seed7
WRKSRC =	${WRKDIST}/src

post-patch:
	perl -pi -e "s,-O2,${CFLAGS},g" ${WRKSRC}/makefile
	perl -pi -e "s,/usr,${TRUEPREFIX},g" ${WRKDIST}/doc/s7{,c}.1

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/bin/s7{,c} ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKDIST}/bin/make7 ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/lib/seed7/bin
	${INSTALL_DATA} ${WRKDIST}/bin/*.a ${PREFIX}/lib/seed7/bin
	${INSTALL_DATA_DIR} ${PREFIX}/lib/seed7/lib
	${INSTALL_DATA} ${WRKDIST}/lib/*.s7i ${PREFIX}/lib/seed7/lib
	${INSTALL_DATA_DIR} ${PREFIX}/lib/seed7/lib/comp
	${INSTALL_DATA} ${WRKDIST}/lib/comp/*.s7i ${PREFIX}/lib/seed7/lib/comp
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/seed7
	${INSTALL_DATA} ${WRKDIST}/prg/*.{dna,sd7,dat,s7i} ${PREFIX}/share/examples/seed7
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/seed7
	${INSTALL_DATA} ${WRKDIST}/{COPYING,LGPL} ${PREFIX}/share/doc/seed7
	${INSTALL_DATA} ${WRKDIST}/doc/*.{txt,htm,css,rc,syn,uew} ${PREFIX}/share/doc/seed7
	${INSTALL_MAN} ${WRKDIST}/doc/*.1 ${PREFIX}/man/man1

# chkexc fails with our make; use gmake
do-test:
	cd ${WRKSRC} && ${MAKE_PROGRAM} ${TEST_TARGET}

.include <bsd.port.mk>
