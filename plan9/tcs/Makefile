# $OpenBSD: Makefile,v 1.5 1999/06/03 01:22:35 brad Exp $

DISTNAME=	tcs
PKGNAME=	tcs-19950325
CATEGORIES=	plan9
MAINTAINER=	markus.friedl@informatik.uni-erlangen.de
MASTER_SITES= 	ftp://plan9.bell-labs.com/plan9/unixsrc/ \
		ftp://ftp.gwdg.de/pub/gnu2/plan9/unixsrc/
EXTRACT_SUFX=	.shar.Z

NO_WRKSUBDIR=	yes
EXTRACT_CMD=	${GZCAT}
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS= | ${SH}

ALL_TARGET= tcs

do-install:
	@${INSTALL_MAN} ${WRKSRC}/tcs.1 ${PREFIX}/man/man1
	@${INSTALL_PROGRAM} ${WRKSRC}/tcs ${PREFIX}/bin

.include <bsd.port.mk>
