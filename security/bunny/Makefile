# $OpenBSD: Makefile,v 1.5 2013/08/07 21:32:33 naddy Exp $

ONLY_FOR_ARCHS=	i386 amd64

COMMENT=	general-purpose protocol-blind fuzzer for C programs

DISTNAME=	bunny-0.93
REVISION=	0
CATEGORIES=    	security net
EXTRACT_SUFX=	.tgz

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

HOMEPAGE=	https://code.google.com/p/bunny-the-fuzzer/

# Apache 2
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m crypto

MASTER_SITES=	https://bunny-the-fuzzer.googlecode.com/files/

WRKDIST=	${WRKDIR}/bunny
TEST_TARGET=	test1 test2 test3
MAKE_FLAGS=	CFLAGS="${CFLAGS} -Wall -funroll-loops \
		-fno-strict-aliasing -ffast-math"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bunny-{gcc,trace,exec,flow,main} \
		${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bunny
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/bunny

.include <bsd.port.mk>
