# New ports collection makefile for:	glimpse
# Version required:	4.1
# Date created:		25 Jan 1998
# Whom:			weingart@openbsd.org
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/01/25 20:35:33 weingart Exp $
#

PKGNAME=	glimpse-4.1
DISTNAME=	glimpse-4.1
DISTFILES=		glimpse-4.1.src.tar.gz
CATEGORIES=	textproc databases
MASTER_SITES=   ftp://ftp.cs.arizona.edu/glimpse/

MAINTAINER=	weingart@openbsd.org

GNU_CONFIGURE=	yes
NO_CDROM=	"Restrictive copyright (don't sell for profit)"
MAN1=		glimpse.1 glimpseindex.1 glimpseserver.1 agrep.1

pre-configure:
	chmod ugo+x ${WRKSRC}/configure

post-install:
	${MKDIR} ${PREFIX}/share/doc/glimpse
	${INSTALL_DATA} ${WRKSRC}/COPYRIGHT ${PREFIX}/share/doc/glimpse
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/glimpse
	${INSTALL_PROGRAM} ${WRKSRC}/index/wgconvert ${PREFIX}/bin

.include <bsd.port.mk>
