# $OpenBSD: Makefile,v 1.6 1999/11/09 07:06:22 kevlo Exp $

DISTNAME=	bnetd-0.4.19
CATEGORIES=	games 
MASTER_SITES=	http://www.bnetd.org/files/

MAINTAINER=	brad@cvs.openbsd.org

do-configure:
	@(cd ${WRKSRC}/src; ${SETENV} CFLAGS="${CFLAGS}" \
	    ./configure --prefix=${PREFIX} ${CONFIGURE_TARGET})

do-build:
	@(cd ${WRKSRC}/src; ${MAKE} ${MAKE_FLAGS} ${MAKEFILE} ${MAKE_ARGS})

do-install:
	cd ${WRKSRC}/bin; ${INSTALL_PROGRAM} * ${PREFIX}/bin
	cd ${WRKSRC}/sbin; ${INSTALL_PROGRAM} * ${PREFIX}/sbin
	cd ${WRKSRC}/man; ${INSTALL_MAN}  bnchat.1 bnetd.1 bnftp.1 bnpass.1 ${PREFIX}/man/man1; ${INSTALL_MAN} bnetd.conf.4 bntext.4 bnmotd.txt.4 bnnews.txt.4 ${PREFIX}/man/man4
	${MKDIR} ${PREFIX}/bnetd; ${CP} -R ${WRKSRC}/files ${WRKSRC}/users ${WRKSRC}/conf ${WRKSRC}/reports ${PREFIX}/bnetd


.include <bsd.port.mk>
