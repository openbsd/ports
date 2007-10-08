# $OpenBSD: Makefile,v 1.26 2007/10/08 14:01:12 steven Exp $

COMMENT=	manipulating PostScript documents

DISTNAME=	psutils-p17
PKGNAME=	psutils-0.17p0
CATEGORIES=	print

MASTER_SITES=	${MASTER_SITE_TEX_CTAN:=support/psutils/}

HOMEPAGE=	http://gershwin.ens.fr/vdaniel/Doc-Locale/Outils-Gnu-Linux/PsUtils/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

WRKDIST=	${WRKDIR}/psutils

FLAVORS=a3 a4 a5 b5 letter legal ledger tabloid statement executive \
	folio quarto s10x14

FLAVOR?=a4

.for i in ${FLAVORS}
.  if ${FLAVOR:L} == $i
OK=Yes
.  endif
.endfor
OK?=No
.if ${OK} == "No"
ERRORS+="Fatal: Invalid flavor ${FLAVOR}"
.endif

MAKE_FLAGS=	\
	BINDIR=${PREFIX}/bin \
	INCLUDEDIR=${PREFIX}/share/psutils \
	MANDIR=${PREFIX}/man/man1 \
	PERL=/usr/bin/perl CC=cc CFLAGS='${CFLAGS}' \
	PAPER=${FLAVOR:L} 
FAKE_FLAGS=	\
	BINDIR=${WRKINST}${PREFIX}/bin \
	INCLUDEDIR=${WRKINST}${PREFIX}/share/psutils \
	MANDIR=${WRKINST}${PREFIX}/man/man1 \
	PERL=/usr/bin/perl CC=cc CFLAGS='${CFLAGS}' \
	PAPER=${FLAVOR:L} 

MAKE_FILE=Makefile.unix

NO_REGRESS=	Yes

.include <bsd.port.mk>
