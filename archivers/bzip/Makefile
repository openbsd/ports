# $OpenBSD: Makefile,v 1.8 1999/12/28 06:13:04 brad Exp $

DISTNAME=	bzip-0.21
CATEGORIES=	archivers
MASTER_SITES=	ftp://ftp.freebsd.org/pub/FreeBSD/distfiles/

NO_CDROM=	"NOFEE: can not sell"

MAINTAINER=	ports@openbsd.org

pre-install:
	@cat ${FILESDIR}/COPYRIGHT

do-install:
	@rm -f ${PREFIX}/bin/bzip ${PREFIX}/bin/bunzip
	${INSTALL_PROGRAM} ${WRKSRC}/bzip ${PREFIX}/bin/bzip
	@ln -sf ${PREFIX}/bin/bzip ${PREFIX}/bin/bunzip
	${INSTALL_MAN} ${WRKSRC}/bzip.1 ${PREFIX}/man/man1/bzip.1
	${INSTALL_MAN} ${WRKSRC}/bzip.1 ${PREFIX}/man/man1/bunzip.1

.include <bsd.port.mk>
