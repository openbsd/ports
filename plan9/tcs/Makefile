# $OpenBSD: Makefile,v 1.7 2000/02/10 23:14:34 espie Exp $

DISTNAME=	tcs
PKGNAME=	tcs-19950325
CATEGORIES=	plan9
MASTER_SITES= 	ftp://plan9.bell-labs.com/plan9/unixsrc/ \
		ftp://ftp.gwdg.de/pub/gnu2/plan9/unixsrc/
EXTRACT_SUFX=	.shar.Z
NEED_VERSION=	1.191

EXTRACT_CMD=	gzcat
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS= | sh

MAINTAINER=	markus@openbsd.org

WRKDIST=	${WRKDIR}

ALL_TARGET= tcs

do-install:
	${INSTALL_MAN} ${WRKSRC}/tcs.1 ${PREFIX}/man/man1
	${INSTALL_PROGRAM} ${WRKSRC}/tcs ${PREFIX}/bin

.include <bsd.port.mk>
