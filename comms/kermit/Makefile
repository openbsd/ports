# $OpenBSD: Makefile,v 1.8 2000/03/24 22:11:36 espie Exp $
#

DISTNAME=	cku192src
PKGNAME=        kermit-6.0.192
CATEGORIES=	comms
NEED_VERSION=	1.191

RESTRICTED=	"'No redistribution' copyright"

MAINTAINER=	ports@OpenBSD.ORG

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://kermit.columbia.edu/kermit/archives/ \
		ftp://ftp.th-darmstadt.de/pub/networking/kermit/ \
		ftp://ftp.std.com/customers2/src/telcom/

WRKDIST=	${WRKDIR}

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/kermit
	${INSTALL_DATA} ${FILESDIR}/dot.kermrc ${PREFIX}/share/examples/kermit

.include <bsd.port.mk>
