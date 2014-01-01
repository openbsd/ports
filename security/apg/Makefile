# $OpenBSD: Makefile,v 1.19 2014/01/01 20:46:28 naddy Exp $

COMMENT=		automated password generator

DISTNAME=		apg-2.2.3
REVISION =		0
CATEGORIES=     	security

HOMEPAGE=		http://www.adel.nursat.kz/apg/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m

MASTER_SITES=		http://www.adel.nursat.kz/apg/download/

MAKE_FLAGS=		CC="${CC}" FLAGS="${CFLAGS}" \
			LIBS="" USE_SHA=APG_USE_SHA

NO_TEST=		Yes

do-install:
	${INSTALL_MAN} ${WRKSRC}/doc/man/apg.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/man/apgbfm.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/man/apgd.8 ${PREFIX}/man/man8

	${INSTALL_PROGRAM} ${WRKSRC}/apg ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKSRC}/apgbfm ${PREFIX}/bin/
	${INSTALL_SCRIPT}  ${WRKSRC}/perl/apgcli.pl ${PREFIX}/bin/apgcli
	${INSTALL_PROGRAM} ${WRKSRC}/apgd ${PREFIX}/sbin

.include <bsd.port.mk>
