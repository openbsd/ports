# $OpenBSD: Makefile,v 1.29 2009/05/31 18:06:26 wcmaier Exp $

COMMENT=	create & extract files from DOS .ARC files

DISTNAME=	arc-5.21o
PKGNAME=	${DISTNAME}p1
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

WANTLIB=	c

MAKE_FLAGS=	CC="${CC}" OPT="${CFLAGS}" TMCLOCK=""

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/arc ${WRKBUILD}/marc ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/arc.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/arc
	${INSTALL_DATA} ${WRKSRC}/Arc521.doc ${WRKSRC}/Arcinfo \
		${PREFIX}/share/doc/arc

NO_REGRESS=	Yes

.include <bsd.port.mk>
