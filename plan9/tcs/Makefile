# OpenBSD makefile for:	tcs
# Version required:	19950325
# Date created:		Sep 23 1998
# Whom:			msfriedl@cs.fau.de
#
# $Id: Makefile,v 1.1.1.1 1998/09/28 21:00:48 marc Exp $
#

DISTNAME=		tcs-19950325
CATEGORIES=             plan9
MAINTAINER=		msfriedl@cs.fau.de

MASTER_SITES= 		ftp://plan9.bell-labs.com/plan9/unixsrc/ \
			ftp://ftp.gwdg.de/pub/gnu2/plan9/unixsrc/

DISTFILES=		tcs.shar.Z

EXTRACT_SUFX=		.shar.Z
EXTRACT_CMD=		gzip -d <
EXTRACT_BEFORE_ARGS=
EXTRACT_AFTER_ARGS=	|sh

NO_WRKSUBDIR=		yes
ALL_TARGET=		tcs

do-install:
	@${INSTALL_MAN} $(WRKSRC)/tcs.1 $(PREFIX)/man/man1
	@${INSTALL_PROGRAM}  $(WRKSRC)/tcs $(PREFIX)/bin

.include <bsd.port.mk>
