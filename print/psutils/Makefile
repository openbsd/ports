# $OpenBSD: Makefile,v 1.37 2013/03/11 11:37:54 espie Exp $

COMMENT=	utilities for manipulating PostScript documents

MINV=		17
DISTNAME=	psutils-p${MINV}
PKGNAME=	psutils-1.${MINV}
REVISION =	4

CATEGORIES=	print

MASTER_SITES=	${MASTER_SITE_TEX_CTAN:=support/psutils/}

HOMEPAGE=	http://gershwin.ens.fr/vdaniel/Doc-Locale/Outils-Gnu-Linux/PsUtils/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# see LICENSE in WRKSRC
# Apple copyrighted files have been removed from the package
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB +=	c

WRKDIST=	${WRKDIR}/psutils
USE_GROFF =	Yes

FLAVORS=	a4
FLAVOR?=

.if ${FLAVOR} == a4
PAPERSIZE=	a4
.else
PAPERSIZE=	letter
.endif

MAKE_FLAGS=	PAPER=${PAPERSIZE}
FAKE_FLAGS=	PAPER=${PAPERSIZE}

MAKE_FILE=	Makefile.unix

NO_TEST=	Yes

.include <bsd.port.mk>
