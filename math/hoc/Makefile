# Ports collection makefile for	"hoc", the High Order Calculator
# $OpenBSD: Makefile,v 1.13 2000/10/05 16:10:25 ian Exp $

DISTNAME=	hoc
PKGNAME=	hoc-1.1
CATEGORIES=	math
NEED_VERSION=	1.210
MASTER_SITES=	http://cm.bell-labs.com/cm/cs/who/bwk/
EXTRACT_SUFX=	.sh

EXTRACT_CMD=	${SH}
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS=	# empty

MAINTAINER=	Ian Darwin <ian@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
FAKE=			Yes

ALL_TARGET=	hoc
MAKE_FILE=	makefile

# Bug-fix for gcc 2.95.2
.if ${MACHINE_ARCH} == "i386"
pre-build:
	cd ${WRKSRC} && make code.o CFLAGS=-O0
.endif


WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hoc ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/hoc.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
