# $OpenBSD: Makefile,v 1.10 2000/03/24 22:11:56 espie Exp $

DISTNAME=	tcs
PKGNAME=	tcs-19950325
CATEGORIES=	plan9
NEED_VERSION=	1.191
MASTER_SITES= 	ftp://plan9.bell-labs.com/plan9/unixsrc/ \
		ftp://ftp.gwdg.de/pub/gnu2/plan9/unixsrc/
EXTRACT_SUFX=	.shar.Z

EXTRACT_CMD=	gzcat
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS= | sh

MAINTAINER=	markus@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

WRKDIST=	${WRKDIR}

ALL_TARGET= tcs

do-install:
	${INSTALL_MAN} ${WRKSRC}/tcs.1 ${PREFIX}/man/man1
	${INSTALL_PROGRAM} ${WRKSRC}/tcs ${PREFIX}/bin

.include <bsd.port.mk>
