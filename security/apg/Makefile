# $OpenBSD: Makefile,v 1.17 2013/03/11 11:41:24 espie Exp $

COMMENT=		automated password generator

DISTNAME=		apg-2.2.3
REVISION =		0
CATEGORIES=     	security

HOMEPAGE=		http://www.adel.nursat.kz/apg/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m

MASTER_SITES=		http://www.adel.nursat.kz/apg/download/ \
			${MASTER_SITE_PACKETSTORM:=UNIX/misc/}

MAKE_FLAGS=		CC="${CC}" FLAGS="${CFLAGS}" \
			LIBS="" USE_SHA=APG_USE_SHA

USE_GROFF =	 	Yes
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
