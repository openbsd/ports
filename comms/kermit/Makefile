# OpenBSD makefile for:	kermit
# Version required:     6.0.192
# Date created:		Dec 31, 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.2 1998/01/30 22:35:21 niklas Exp $
#

DISTNAME=	cku192src
PKGNAME=        kermit-6.0.192
CATEGORIES=	comms

MASTER_SITES=	ftp://kermit.columbia.edu/kermit/archives/ \
		ftp://ftp.th-darmstadt.de/pub/networking/kermit/ \
		ftp://ftp.std.com/customers2/src/telcom/

MAINTAINER=	joey@OpenBSD.ORG

RESTRICTED=	"'No redistribution' copyright"
NO_WRKSUBDIR=	yes
MAN1=		kermit.1

post-install:
	@${MKDIR} ${PREFIX}/share/examples/kermit
	${INSTALL_DATA} ${FILESDIR}/dot.kermrc ${PREFIX}/share/examples/kermit
	@${CAT} ${PKGDIR}/DESCR

.include <bsd.port.mk>
