# $OpenBSD: Makefile,v 1.7 2001/02/27 12:12:44 naddy Exp $
# $NetBSD: Makefile,v 1.2 2000/01/07 04:20:49 hubertf Exp $

DISTNAME=	ac3dec-0.6.1
CATEGORIES=	audio
NEED_VERSION=	1.357
MASTER_SITES=	http://gusnet.cx/aaron/codecs/tarballs/

HOMEPAGE=	http://gusnet.cx/aaron/codecs/ac3dec.php

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

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
