# $OpenBSD: Makefile,v 1.5 2000/09/17 19:40:44 brad Exp $
# $NetBSD: Makefile,v 1.2 2000/01/07 04:20:49 hubertf Exp $

ONLY_FOR_ARCHS=	i386

DISTNAME=	ac3dec-0.5.6
CATEGORIES=	audio
NEED_VERSION=	1.320
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://ess.engr.uvic.ca/%7Eaholtzma/ac3/

MAINTAINER=	angelos@openbsd.org

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
