# $OpenBSD: Makefile,v 1.4 2002/02/20 16:55:49 naddy Exp $

COMMENT=		"automated password generator"

DISTNAME=		apg-2.1.0a0
CATEGORIES=     	security
NEED_VERSION=		1.504

HOMEPAGE=		http://www.adel.nursat.kz/apg/

MAINTAINER=		Jose Nazario <jose@crimelabs.net>

# BSD
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		http://www.adel.nursat.kz/apg/download/ \
			${MASTER_SITE_PACKETSTORM}
MASTER_SITE_SUBDIR=	UNIX/misc

MAKE_FLAGS=		CC="${CC}" FLAGS="${CFLAGS}" \
			LIBS="" USE_SHA=APG_USE_SHA
FAKE_FLAGS=		INSTALL_PREFIX=${WRKINST}${PREFIX}

NO_REGRESS=		Yes

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/perl/apgcli.pl ${PREFIX}/bin/apgcli
.for prog in bin/apg bin/apgbfm sbin/apgd
	${STRIP} ${PREFIX}/${prog}
.endfor

.include <bsd.port.mk>
