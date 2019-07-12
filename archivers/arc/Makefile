# $OpenBSD: Makefile,v 1.34 2019/07/12 20:43:27 sthen Exp $

COMMENT=	create & extract files from DOS .ARC files

DISTNAME=	arc-5.21p
CATEGORIES=	archivers

HOMEPAGE=	http://arc.sourceforge.net/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=arc/}

WANTLIB=	c

MAKE_FLAGS=	CC="${CC}" OPT="${CFLAGS}" TMCLOCK=""

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/arc ${WRKBUILD}/marc ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/{arc.1,marc.1} ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/arc
	${INSTALL_DATA} ${WRKSRC}/Arc521.doc ${WRKSRC}/Arcinfo \
		${PREFIX}/share/doc/arc

NO_TEST=	Yes

.include <bsd.port.mk>
