# $OpenBSD: Makefile,v 1.5 1998/10/07 18:33:11 marc Exp $
#

DISTNAME=	cku192src
PKGNAME=        kermit-6.0.192
CATEGORIES=	comms

NO_CDROM=	"NOFEE:	Can not sell"
RESTRICTED=	"'No redistribution' copyright"

MAINTAINER=	ports@OpenBSD.ORG

MASTER_SITES=	ftp://kermit.columbia.edu/kermit/archives/ \
		ftp://ftp.th-darmstadt.de/pub/networking/kermit/ \
		ftp://ftp.std.com/customers2/src/telcom/

NO_WRKSUBDIR=	yes

post-install:
	@${MKDIR} ${PREFIX}/share/examples/kermit
	${INSTALL_DATA} ${FILESDIR}/dot.kermrc ${PREFIX}/share/examples/kermit

.include <bsd.port.mk>
