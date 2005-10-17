# $OpenBSD: Makefile,v 1.20 2005/10/17 18:59:50 espie Exp $

COMMENT=	"manipulating PostScript documents"

BROKEN=		"Who put this shit in our ports tree without proper flavors"
DISTNAME=	psutils-p17
CATEGORIES=	print

MASTER_SITES=   ftp://ftp.tardis.ed.ac.uk/users/ajcd/

HOMEPAGE=	http://gershwin.ens.fr/vdaniel/Doc-Locale/Outils-Gnu-Linux/PsUtils/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

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
ERRORS+="Fatal: invalid value for PAPERSIZE: \"${PAPERSIZE}\"" \
	"   Possible values are:  A3, A4 (default), A5, B5, letter, legal," \
	"   ledger, tabloid, statement, executive, folio, quarto, and 10x14."
.endif
PKGNAME=	psutils-1.17-${PP}
MAKE_FLAGS=	\
	BINDIR=${PREFIX}/bin \
	INCLUDEDIR=${PREFIX}/share/psutils \
	MANDIR=${PREFIX}/man/man1 \
	PERL=/usr/bin/perl CC=cc CFLAGS='${CFLAGS}' \
	PAPER=${PP} 
FAKE_FLAGS=	\
	BINDIR=${WRKINST}${PREFIX}/bin \
	INCLUDEDIR=${WRKINST}${PREFIX}/share/psutils \
	MANDIR=${WRKINST}${PREFIX}/man/man1 \
	PERL=/usr/bin/perl CC=cc CFLAGS='${CFLAGS}' \
	PAPER=${PP} 
.endfor

MAKE_FILE=Makefile.unix

NO_REGRESS=	Yes

.include <bsd.port.mk>
