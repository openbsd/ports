# $OpenBSD: Makefile,v 1.10 2004/12/27 13:28:33 alek Exp $

COMMENT=		"automated password generator"

DISTNAME=		apg-2.2.0
CATEGORIES=     	security

HOMEPAGE=		http://www.adel.nursat.kz/apg/

# BSD
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 
WANTLIB=		c m

MASTER_SITES=		http://www.adel.nursat.kz/apg/download/ \
			${MASTER_SITE_PACKETSTORM:=UNIX/misc/}

MAKE_FLAGS=		CC="${CC}" FLAGS="${CFLAGS}" \
			LIBS="" USE_SHA=APG_USE_SHA
FAKE_FLAGS=		INSTALL_PREFIX=${WRKINST}${PREFIX}

NO_REGRESS=		Yes

post-extract:
	@find ${WRKDIST} -type d -print0 | xargs -0 chmod 0755 

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/perl/apgcli.pl ${PREFIX}/bin/apgcli
.for prog in bin/apg bin/apgbfm sbin/apgd
	${STRIP} ${PREFIX}/${prog}
.endfor

.include <bsd.port.mk>
