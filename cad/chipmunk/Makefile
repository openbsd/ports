# $OpenBSD: Makefile,v 1.18 2013/12/05 12:19:00 naddy Exp $

COMMENT=	electronic CAD system
BROKEN-sparc64 =	Assembler messages: Error: Illegal operands

PKGNAME=	chipmunk-1.57
REVISION=	5
DISTNAME=	psys-1.57
DISTFILES=	psys-1.57.tar.gz webdoc1.46.tar.gz log-5.61.tar.gz \
		view-1.13.tar.gz until-1.13.tar.gz wol-1.13.tar.gz \
		wolcomp-1.13.tar.gz
CATEGORIES=	cad

HOMEPAGE=	http://www.cs.berkeley.edu/~lazzaro/chipmunk/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 c m

#MASTER_SITES=	http://www.cs.berkeley.edu/~lazzaro/chipmunk/pickup/sources/
MASTER_SITES=	http://www.sightly.net/distfiles/
DIST_SUBDIR=	chipmunk

WRKDIST=	${WRKDIR}
ALL_TARGET=	makeonly
LDIR=		${LOCALBASE}/share/chipmunk/
MAKE_FLAGS=	CHIPMUNKCC="${CC} ${CFLAGS}" XINCLUDEDIR="${X11BASE}/include" \
	    	CHIPMUNKFLAGS="-DBSD -Dfreebsd -Dlinux -DF_OK=0" \
		LIBX11="-L${X11BASE}/lib -lX11" \
		CHIPLIB="${LDIR}" \
		LOGLIBDIR="${LDIR}" \
		LIBDIR="${LDIR}" \
		WOLLIBDIR="${LDIR}" \
		UNTILPSMAP="${LDIR}/pensps.map"
		
NO_TEST=	Yes

post-extract:
	@cp ${FILESDIR}/Makefile ${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/chipmunk
	${INSTALL_DATA} ${WRKSRC}/psys/src/texstuff.ps ${PREFIX}/share/doc/chipmunk/
	${INSTALL_DATA} ${WRKSRC}/psys/src/untilstuff.ps ${PREFIX}/share/doc/chipmunk/
	${INSTALL_PROGRAM} ${WRKSRC}/log/src/log ${PREFIX}/bin/diglog
	${INSTALL_PROGRAM} ${WRKSRC}/log/src/log ${PREFIX}/bin/analog
	${INSTALL_PROGRAM} ${WRKSRC}/log/src/loged ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/log/src/fixfet7 ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/wol/wol ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/until/V1.2/until ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/until/V1.2/pensps.map ${PREFIX}/share/doc/chipmunk/
	${INSTALL_DATA} ${WRKSRC}/until/V1.2/system.untilrc ${PREFIX}/share/doc/chipmunk/
	${INSTALL_DATA} ${WRKSRC}/until/V1.2/until.pro ${PREFIX}/share/doc/chipmunk/
	${INSTALL_DATA} ${WRKSRC}/until/V1.2/until.ps ${PREFIX}/share/doc/chipmunk/
	${INSTALL_DATA} ${WRKSRC}/view/view ${PREFIX}/bin/cview
	${INSTALL_DATA_DIR} ${PREFIX}/share/chipmunk
	${INSTALL_DATA} ${WRKSRC}/log/lib/*.* ${PREFIX}/share/chipmunk
	${INSTALL_DATA} ${WRKSRC}/view/lib/* ${PREFIX}/share/chipmunk

.include <bsd.port.mk>
