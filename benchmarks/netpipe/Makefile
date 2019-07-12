# $OpenBSD: Makefile,v 1.29 2019/07/12 20:43:43 sthen Exp $

COMMENT=	self-scaling network benchmark

DISTNAME=	NetPIPE-3.7.2
PKGNAME=	netpipe-3.7.2
CATEGORIES=	benchmarks net

HOMEPAGE=	http://bitspjoule.org/netpipe/

# GPLv2
PERMIT_PACKAGE=	Yes
WANTLIB=		c

MASTER_SITES=	${HOMEPAGE}/code/

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}"

NO_TEST=	Yes

MAKE_FILE=	makefile

ALL_TARGET=	tcp tcp6

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/NPtcp ${PREFIX}/bin
	cd ${PREFIX}/bin && ln -sf NPtcp netpipe
	${INSTALL_PROGRAM} ${WRKBUILD}/NPtcp6 ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/dox/netpipe.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
