# $OpenBSD: Makefile,v 1.6 1999/12/08 05:06:33 brad Exp $

DISTNAME=	tcs
PKGNAME=	tcs-19950325
CATEGORIES=	plan9
MASTER_SITES= 	ftp://plan9.bell-labs.com/plan9/unixsrc/ \
		ftp://ftp.gwdg.de/pub/gnu2/plan9/unixsrc/
EXTRACT_SUFX=	.shar.Z

EXTRACT_CMD=	gzcat
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS= | sh

MAINTAINER=	markus@openbsd.org

NO_WRKSUBDIR=	yes

ALL_TARGET= tcs

do-install:
	${INSTALL_MAN} ${WRKSRC}/tcs.1 ${PREFIX}/man/man1
	${INSTALL_PROGRAM} ${WRKSRC}/tcs ${PREFIX}/bin

.include <bsd.port.mk>
