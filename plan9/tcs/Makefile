# $OpenBSD: Makefile,v 1.13 2000/08/19 02:16:52 brad Exp $

DISTNAME=	tcs
PKGNAME=	tcs-19950325
CATEGORIES=	plan9
NEED_VERSION=	1.310
MASTER_SITES= 	ftp://plan9.bell-labs.com/plan9/unixsrc/ \
		ftp://ftp.gwdg.de/pub/gnu2/plan9/unixsrc/
EXTRACT_SUFX=	.shar.Z

EXTRACT_CMD=	gzcat
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS= | sh

MAINTAINER=	markus@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CFLAGS="${CFLAGS} -D_POSIX_SOURCE"

ALL_TARGET=	tcs

WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcs ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tcs.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
