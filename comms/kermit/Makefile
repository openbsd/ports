# $OpenBSD: Makefile,v 1.6 2000/02/10 23:14:29 espie Exp $
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
NEED_VERSION=	1.191

WRKDIST=	${WRKDIR}

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/kermit
	${INSTALL_DATA} ${FILESDIR}/dot.kermrc ${PREFIX}/share/examples/kermit

.include <bsd.port.mk>
