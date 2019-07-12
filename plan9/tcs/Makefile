# $OpenBSD: Makefile,v 1.25 2019/07/12 20:48:54 sthen Exp $

COMMENT=	translate character sets

DISTNAME=	tcs
PKGNAME=	tcs-19950325
CATEGORIES=	plan9

MASTER_SITES= 	ftp://plan9.bell-labs.com/plan9/unixsrc/ \
		ftp://ftp.gwdg.de/pub/gnu2/plan9/unixsrc/
EXTRACT_SUFX=	.shar.Z
EXTRACT_CASES=	*.shar.Z) ${GZIP_CMD} -dc ${FULLDISTDIR}/$$archive | /bin/sh;;

MAINTAINER=	Markus Friedl <markus@openbsd.org>

PERMIT_PACKAGE=	Yes
WANTLIB=		c

MAKE_FLAGS=	CFLAGS="${CFLAGS} -D_POSIX_SOURCE"

ALL_TARGET=	tcs

WRKDIST=	${WRKDIR}

do-test:
	cd ${WRKSRC}; ./regress

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcs ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tcs.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
