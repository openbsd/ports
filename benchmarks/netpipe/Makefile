# $OpenBSD: Makefile,v 1.15 2004/05/04 20:02:33 david Exp $
# $FreeBSD: Makefile,v 1.2 1999/03/03 03:48:56 jkoshy Exp $

COMMENT=	"self-scaling network benchmark"

DISTNAME=	netpipe-2.4
CATEGORIES=	benchmarks net
MASTER_SITES=	ftp://ftp.scl.ameslab.gov/pub/netpipe/

HOMEPAGE=	http://www.scl.ameslab.gov/netpipe/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS} -DHAVE_GETRUSAGE"
ALL_TARGET=	NPtcp

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/NPtcp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/netpipe.1 ${PREFIX}/man/man1
	cd ${PREFIX}/bin && ln -sf NPtcp netpipe
	
.include <bsd.port.mk>
