# $OpenBSD: Makefile,v 1.3 2002/01/25 17:38:50 jsyn Exp $

COMMENT=		"automated password generator"

DISTNAME=		apg-2.1.0a0
CATEGORIES=     	security
NEED_VERSION=		1.504

HOMEPAGE=		http://www.adel.nursat.kz/apg/

MAINTAINER=		Jose Nazario <jose@crimelabs.net>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		http://www.adel.nursat.kz/apg/download/ \
MASTER_SITES=		${MASTER_SITE_PACKETSTORM}
MASTER_SITE_SUBDIR=	UNIX/misc

MAKE_FLAGS=		CC="${CC}" 
FAKE_FLAGS=		INSTALL_PREFIX=${WRKINST}${PREFIX}

NO_REGRESS=		Yes

post-install:
	${INSTALL_SCRIPT} ${WRKDIST}/perl/apgcli.pl ${PREFIX}/bin/apgcli
	@${STRIP} ${PREFIX}{/bin/apg,/bin/apgbfm,/sbin/apgd}

.include <bsd.port.mk>
