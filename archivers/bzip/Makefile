# OpenBSD makefile for:    bzip
# Version required:     0.21
# Date created:         14 Nov 1997
# Whom:                 ejovi
#
# $OpenBSD: Makefile,v 1.4 1998/04/10 01:41:42 marc Exp $
#

DISTNAME=       bzip-0.21
CATEGORIES=	archivers
NO_CDROM=       "NOFEE: can not sell"
MASTER_SITES=   ftp://ftp.freebsd.org/pub/FreeBSD/distfiles/

MAINTAINER=     joey@OpenBSD.ORG


MAN1=		bzip.1 bunzip.1

pre-install:
	@${CAT} ${FILESDIR}/COPYRIGHT

do-install:
	${RM} -f ${PREFIX}/bin/bzip ${PREFIX}/bin/bunzip
	${INSTALL_PROGRAM} ${WRKSRC}/bzip ${PREFIX}/bin/bzip
	ln -fs ${PREFIX}/bin/bzip ${PREFIX}/bin/bunzip
	${INSTALL_MAN} ${WRKSRC}/bzip.1 ${PREFIX}/man/man1/bzip.1
	${INSTALL_MAN} ${WRKSRC}/bzip.1 ${PREFIX}/man/man1/bunzip.1

.include <bsd.port.mk>
