# $NetBSD: Makefile,v 1.2 2000/01/07 04:20:49 hubertf Exp $
# $OpenBSD: Makefile,v 1.1.1.1 2000/03/01 11:48:28 angelos Exp $
#

DISTNAME=	ac3dec-0.5.6
CATEGORIES=	audio
MASTER_SITES=	http://ess.engr.uvic.ca/~aholtzma/ac3/

MAINTAINER=	angelos@openbsd.org
HOMEPAGE=	http://ess.engr.uvic.ca/~aholtzma/ac3/

GNU_CONFIGURE=  yes

LICENSE_TYPE=           GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ac3dec
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ac3dec
	${INSTALL_DATA} ${WRKSRC}/TODO ${PREFIX}/share/doc/ac3dec

.include <bsd.port.mk>
