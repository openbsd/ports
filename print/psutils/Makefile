# $OpenBSD: Makefile,v 1.29 2010/02/10 16:32:22 naddy Exp $

COMMENT=	utilities for manipulating PostScript documents

MINV=		17
DISTNAME=	psutils-p${MINV}
PKGNAME=	psutils-1.${MINV}p0

CATEGORIES=	print

MASTER_SITES=	${MASTER_SITE_TEX_CTAN:=support/psutils/}

HOMEPAGE=	http://gershwin.ens.fr/vdaniel/Doc-Locale/Outils-Gnu-Linux/PsUtils/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# see LICENSE in WRKSRC
# Apple copyrighted files have been removed from the package
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB +=	c

WRKDIST=	${WRKDIR}/psutils

FLAVORS=	a3 a4 a5 b5 b4 letter legal ledger tabloid statement \
		executive folio quarto s10x14
FLAVOR?=letter

.for i in ${FLAVORS}
.  if ${FLAVOR:L} == $i
OK=Yes
.  endif
.endfor
OK?=No
.if ${OK} == "No"
ERRORS+="Fatal: Invalid flavor ${FLAVOR}"
.endif

.if ${FLAVOR:L} == s10x14
PAPERSIZE=	10x14
.else
PAPERSIZE=	${FLAVOR:L}
.endif

MAKE_FLAGS=	PAPER=${PAPERSIZE}
FAKE_FLAGS=	PAPER=${PAPERSIZE}

MAKE_FILE=	Makefile.unix

NO_REGRESS=	Yes

.include <bsd.port.mk>
