# New ports collection makefile for:    psutils
# Date created:         17 March 1998
# Whom:                 mickey@openbsd.org
#
# $OpenBSD: Makefile,v 1.8 2000/03/12 18:03:57 espie Exp $
#

DISTNAME=	psutils-p17
CATEGORIES=	print
NEED_VERSION=	1.223
MASTER_SITES=	ftp://ftp.dcs.ed.ac.uk/pub/ajcd/

MAINTAINER=	ports@openbsd.org

WRKDIST=	${WRKDIR}/psutils

POSSIBLE_SIZES=a3 a4 a5 b5 letter legal ledger tabloid statement executive \
	folio quarto 10x14

.if !defined(PAPERSIZE) && !defined(NO_WARNINGS)
pre-configure:
	@echo "Defaulting to ${PAPERSIZE} sized paper."
	@echo ""
	@echo "Set the environment variable PAPERSIZE if you want to use other sizes."
	@echo "Possible values are:  A3, A4 (default), A5, B5, letter, legal,"
	@echo "   ledger, tabloid, statement, executive, folio, quarto, and 10x14."
.endif

PAPERSIZE?=a4

# Set PP in for loop, forces evaluation
.for PP in ${PAPERSIZE:L}
.if empty(POSSIBLE_SIZES:M${PP})
.BEGIN:
	@echo "Error: invalid value for PAPERSIZE: \"${PAPERSIZE}\""
	@echo "Possible values are:  A3, A4 (default), A5, B5, letter, legal,"
	@echo "   ledger, tabloid, statement, executive, folio, quarto, and 10x14."
	@exit 1
.endif
PKGNAME=	psutils-1.17-${PP}
MAKE_FLAGS=	\
	BINDIR=${PREFIX}/bin \
	INCLUDEDIR=${PREFIX}/share/psutils \
	MANDIR=${PREFIX}/man/man1 \
	PERL=/usr/bin/perl CC=cc CFLAGS=${CFLAGS} \
	PAPER=${PP} 
FAKE_FLAGS=	\
	BINDIR=${WRKINST}${PREFIX}/bin \
	INCLUDEDIR=${WRKINST}${PREFIX}/share/psutils \
	MANDIR=${WRKINST}${PREFIX}/man/man1 \
	PERL=/usr/bin/perl CC=cc CFLAGS=${CFLAGS} \
	PAPER=${PP} 
.endfor

FAKE=	Yes
MAKE_FILE=Makefile.unix

.include <bsd.port.mk>
