# $OpenBSD: Makefile,v 1.1.1.1 2000/10/01 20:32:20 obecian Exp $

DISTNAME=	antiword-0.30
CATEGORIES=	textproc
NEED_VERSION=	1.320
MASTER_SITES=	http://www.winfield.demon.nl/linux/

WRKDIST=	${WRKDIR}/antiword.0.30

HOMEPAGE=	http://www.winfield.demon.nl/

MAINTAINER=	Mark Grimes <obecian@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/antiword ${PREFIX}/bin

.include <bsd.port.mk>
