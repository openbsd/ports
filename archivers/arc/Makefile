# OpenBSD makefile for:    arc
# Version required:     5.21e
# Date created:         06 November 1997
# Whom:                 ejovi
#
# $OpenBSD: Makefile,v 1.4 1998/04/10 01:41:39 marc Exp $
#

DISTNAME=       arc521e.pl8
PKGNAME=        arc-5.21e
CATEGORIES=	archivers
NO_CDROM=	"NOFEE: can not sell"
MASTER_SITES=   ftp://ftp.kiarchive.ru/pub/unix/arcers/
EXTRACT_SUFX=   .tar.Z

MAINTAINER=     joey@OpenBSD.ORG

NO_WRKSUBDIR=	yes
MAN1=		arc.1

post-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${PREFIX}/share/doc/arc
	${INSTALL_MAN} ${WRKDIR}/Arc521.doc ${WRKDIR}/Arcinfo \
		${PREFIX}/share/doc/arc
.endif

.include <bsd.port.mk>
