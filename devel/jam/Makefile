# $OpenBSD: Makefile,v 1.10 2014/01/25 13:17:12 sthen Exp $

COMMENT=		build utility like make

DISTNAME=		jam-2.5
REVISION =		2
CATEGORIES=		devel

HOMEPAGE=		http://www.perforce.com/jam/jam.html

MAINTAINER=		Jonathan Auer <jda@auerfamily.org>

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MASTER_SITES=		ftp://ftp.perforce.com/pub/jam/
EXTRACT_SUFX=		.tar
NO_TEST=		Yes
MAKE_FLAGS=		CC="${CC}" CCFLAGS="${CFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/jam ${PREFIX}/bin
	${INSTALL_MAN_DIR} ${PREFIX}/share/doc/jam
	${INSTALL_MAN} ${WRKSRC}/Jam.html ${PREFIX}/share/doc/jam
	${INSTALL_MAN} ${WRKSRC}/Jambase.html ${PREFIX}/share/doc/jam
	${INSTALL_MAN} ${WRKSRC}/Jamfile.html ${PREFIX}/share/doc/jam
	${INSTALL_MAN} ${WRKSRC}/README ${PREFIX}/share/doc/jam
	${INSTALL_MAN} ${WRKSRC}/RELNOTES ${PREFIX}/share/doc/jam

.include <bsd.port.mk>
