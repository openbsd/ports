# $OpenBSD: Makefile,v 1.4 1999/05/12 19:11:35 brad Exp $

DISTNAME=		tcs-19950325
CATEGORIES=             plan9
MAINTAINER=		markus.friedl@informatik.uni-erlangen.de
MASTER_SITES= 		ftp://plan9.bell-labs.com/plan9/unixsrc/ \
			ftp://ftp.gwdg.de/pub/gnu2/plan9/unixsrc/
DISTFILES=		tcs.shar.Z

NO_WRKSUBDIR=		yes
EXTRACT_SUFX=		.shar.Z
EXTRACT_CMD=		gzip -d <
EXTRACT_BEFORE_ARGS=
EXTRACT_AFTER_ARGS=	|sh

ALL_TARGET=		tcs

do-install:
	@${INSTALL_MAN} $(WRKSRC)/tcs.1 $(PREFIX)/man/man1
	@${INSTALL_PROGRAM}  $(WRKSRC)/tcs $(PREFIX)/bin

.include <bsd.port.mk>
