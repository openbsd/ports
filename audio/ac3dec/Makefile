# $OpenBSD: Makefile,v 1.11 2002/12/23 00:37:49 pvalchev Exp $
# $NetBSD: Makefile,v 1.2 2000/01/07 04:20:49 hubertf Exp $

COMMENT=	'ac3 audio (as used on DVDs) decoding tools'

DISTNAME=	ac3dec-0.6.1
CATEGORIES=	audio
MASTER_SITES=	http://dara.notbsd.org/~aholtzma/ac3/tarballs/

HOMEPAGE=	http://dara.notbsd.org/~aholtzma/ac3/ac3dec.php

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ac3dec
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/ac3dec
	${INSTALL_DATA} ${WRKSRC}/TODO ${PREFIX}/share/doc/ac3dec

.include <bsd.port.mk>
