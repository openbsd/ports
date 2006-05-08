# $OpenBSD: Makefile,v 1.12 2006/05/08 07:27:04 aanriot Exp $

COMMENT=		"automated password generator"

DISTNAME=		apg-2.2.3
PKGNAME=		${DISTNAME}p0
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

NO_REGRESS=		Yes

do-install:
	${INSTALL_MAN} ${WRKSRC}/doc/man/apg.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/man/apgbfm.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/man/apgd.8 ${PREFIX}/man/man8

	${INSTALL_PROGRAM} ${WRKSRC}/apg ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKSRC}/apgbfm ${PREFIX}/bin/
	${INSTALL_SCRIPT}  ${WRKSRC}/perl/apgcli.pl ${PREFIX}/bin/apgcli
	${INSTALL_PROGRAM} ${WRKSRC}/apgd ${PREFIX}/sbin

.include <bsd.port.mk>
