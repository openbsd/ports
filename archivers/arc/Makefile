# $OpenBSD: Makefile,v 1.5 1999/04/01 02:16:31 brad Exp $

DISTNAME=       arc521e.pl8
PKGNAME=        arc-5.21e
CATEGORIES=	archivers
NO_CDROM=	"NOFEE: can not sell"
MASTER_SITES=   ftp://ftp.kiarchive.ru/pub/unix/arcers/
EXTRACT_SUFX=   .tar.Z

MAINTAINER=     ports@openbsd.org

NO_WRKSUBDIR=	yes

post-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${PREFIX}/share/doc/arc
	${INSTALL_MAN} ${WRKDIR}/Arc521.doc ${WRKDIR}/Arcinfo \
		${PREFIX}/share/doc/arc
.endif

.include <bsd.port.mk>
