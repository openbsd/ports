# $OpenBSD: Makefile,v 1.1.1.1 2001/08/09 19:35:31 jsyn Exp $

COMMENT=		"automated password generator"

DISTNAME=		apg-1.2.13
CATEGORIES=     	security
NEED_VERSION=		1.432

HOMEPAGE=		http://www.adel.nursat.kz/apg/

MAINTAINER=		Jose Nazario <jose@crimelabs.net>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		http://www.adel.nursat.kz/apg/download/

MAKE_FLAGS=		CC="${CC}" 
FAKE_FLAGS=		INSTALL_PREFIX=${WRKINST}${PREFIX}

post-install:
	${INSTALL_SCRIPT} ${WRKDIST}/perl/apgcli.pl ${PREFIX}/bin/apgcli
	@strip ${PREFIX}{/bin/apg,/sbin/apgd}

.include <bsd.port.mk>
