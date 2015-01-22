# $OpenBSD: Makefile,v 1.27 2015/01/22 17:47:50 naddy Exp $

COMMENT=	self-scaling network benchmark

DISTNAME=	netpipe-2.4
DISTFILES=	NetPIPE_2.4.tar.gz
REVISION=	0
CATEGORIES=	benchmarks net

HOMEPAGE=	http://www.scl.ameslab.gov/netpipe/

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MASTER_SITES=	${HOMEPAGE}/code/

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -DHAVE_GETRUSAGE"
ALL_TARGET=	NPtcp

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/NPtcp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/netpipe.1 ${PREFIX}/man/man1
	cd ${PREFIX}/bin && ln -sf NPtcp netpipe
	
.include <bsd.port.mk>
