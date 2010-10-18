# $OpenBSD: Makefile,v 1.31 2010/10/18 16:47:00 espie Exp $

COMMENT=	create & extract files from DOS .ARC files

DISTNAME=	arc-5.21o
CATEGORIES=	archivers

MAINTAINER=	Will Maier <wcmaier@openbsd.org>
HOMEPAGE=	http://arc.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=arc/}
EXTRACT_SUFX=	.tgz

REVISION =	1
WANTLIB=	c

MAKE_FLAGS=	CC="${CC}" OPT="${CFLAGS}" TMCLOCK=""
USE_GROFF =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/arc ${WRKBUILD}/marc ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/arc.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/arc
	${INSTALL_DATA} ${WRKSRC}/Arc521.doc ${WRKSRC}/Arcinfo \
		${PREFIX}/share/doc/arc

NO_REGRESS=	Yes

.include <bsd.port.mk>
