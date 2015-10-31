# $OpenBSD: Makefile,v 1.47 2015/10/31 11:06:37 benoit Exp $

COMMENT=	performance test of sequential file I/O

V =		3.434
DISTNAME=	iozone${V:S/./_/}
PKGNAME=	iozone-$V
CATEGORIES=	benchmarks
MASTER_SITES=	http://www.iozone.org/src/current/
EXTRACT_SUFX=	.tar

HOMEPAGE=	http://www.iozone.org/

PERMIT_PACKAGE_CDROM=	incomplete/bad license
PERMIT_PACKAGE_FTP=	incomplete/bad license
PERMIT_DISTFILES_FTP=	incomplete/bad license

WANTLIB += c pthread

NO_TEST=	Yes

ALL_TARGET=	openbsd-threads

MAKE_FILE=	makefile
MAKE_FLAGS=	CFLAGS="${CFLAGS}" CC="${CC}"

WRKSRC=		${WRKDIST}/src/current

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/iozone ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/docs/iozone.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
