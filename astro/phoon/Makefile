# $OpenBSD: Makefile,v 1.1.1.1 2003/01/13 23:34:18 naddy Exp $

COMMENT=		"displays the phase of the moon in ascii"

DISTNAME=		phoon-20020326
CATEGORIES=		astro

HOMEPAGE=		http://www.acme.com/software/phoon/

MAINTAINER=		Nick Nauwelaerts <nick@nauwelaerts.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}
DISTFILES=		phoon_26mar2002.tar.gz

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS} -DBSD" LDFLAGS=""

WRKDIST=		${WRKDIR}/phoon

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/phoon ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/phoon.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
