# $OpenBSD: Makefile,v 1.3 1999/11/30 02:12:48 kevlo Exp $
# $FreeBSD: Makefile,v 1.2 1999/03/03 03:48:56 jkoshy Exp $

DISTNAME=	netpipe-2.3
CATEGORIES=	benchmarks net
MASTER_SITES=	ftp://ftp.scl.ameslab.gov/pub/netpipe/ \
		http://www.freebsd.org/~jkoshy/PORTS/

MAINTAINER=	brad@openbsd.org

ALL_TARGET=	NPtcp

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/NPtcp ${PREFIX}/bin/NPtcp
	@${LN} -fs ${PREFIX}/bin/NPtcp ${PREFIX}/bin/netpipe
	${INSTALL_DATA} ${WRKSRC}/netpipe.1 ${PREFIX}/man/man1/netpipe.1

.include <bsd.port.mk>
