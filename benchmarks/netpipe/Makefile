# $OpenBSD: Makefile,v 1.8 2000/04/08 20:37:25 espie Exp $
# $FreeBSD: Makefile,v 1.2 1999/03/03 03:48:56 jkoshy Exp $

DISTNAME=	netpipe-2.3
CATEGORIES=	benchmarks net
MASTER_SITES=	ftp://ftp.scl.ameslab.gov/pub/netpipe/ \
		http://people.freebsd.org/~jkoshy/PORTS/

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
MAKE_FLAGS=		CC='${CC}' CFLAGS='${CFLAGS}'
FAKE=			Yes

ALL_TARGET=	NPtcp

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/NPtcp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/netpipe.1 ${PREFIX}/man/man1
	cd ${PREFIX}/bin && ln -sf NPtcp netpipe
	
.include <bsd.port.mk>
