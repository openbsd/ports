# $OpenBSD: Makefile,v 1.22 2010/10/18 21:25:08 espie Exp $

COMMENT=	translate character sets

DISTNAME=	tcs
PKGNAME=	tcs-19950325
CATEGORIES=	plan9

MASTER_SITES= 	ftp://plan9.bell-labs.com/plan9/unixsrc/ \
		ftp://ftp.gwdg.de/pub/gnu2/plan9/unixsrc/
EXTRACT_SUFX=	.shar.Z
EXTRACT_CASES=	*.shar.Z) ${GZIP_CMD} -dc ${FULLDISTDIR}/$$archive | /bin/sh;;

MAINTAINER=	Markus Friedl <markus@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MAKE_FLAGS=	CFLAGS="${CFLAGS} -D_POSIX_SOURCE"

ALL_TARGET=	tcs

WRKDIST=	${WRKDIR}
USE_GROFF =	Yes

do-regress:
	cd ${WRKSRC}; ./regress

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcs ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tcs.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
