# $OpenBSD: Makefile,v 1.8 2000/02/12 08:41:11 turan Exp $

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

LICENSE_TYPE=		NONE
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

WRKDIST=	${WRKDIR}

ALL_TARGET= tcs

do-install:
	${INSTALL_MAN} ${WRKSRC}/tcs.1 ${PREFIX}/man/man1
	${INSTALL_PROGRAM} ${WRKSRC}/tcs ${PREFIX}/bin

.include <bsd.port.mk>
