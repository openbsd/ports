# OpenBSD makefile for:	kermit
# Version required:     6.0.192
# Date created:		Dec 31, 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.3 1998/03/03 21:45:42 marc Exp $
#

DISTNAME=	cku192src
PKGNAME=        kermit-6.0.192
CATEGORIES=	comms

MASTER_SITES=	ftp://kermit.columbia.edu/kermit/archives/ \
		ftp://ftp.th-darmstadt.de/pub/networking/kermit/ \
		ftp://ftp.std.com/customers2/src/telcom/

MAINTAINER=	ports@OpenBSD.ORG

RESTRICTED=	"'No redistribution' copyright"
NO_WRKSUBDIR=	yes

post-install:
	@${MKDIR} ${PREFIX}/share/examples/kermit
	${INSTALL_DATA} ${FILESDIR}/dot.kermrc ${PREFIX}/share/examples/kermit

.include <bsd.port.mk>
