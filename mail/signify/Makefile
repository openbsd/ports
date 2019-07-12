# $OpenBSD: Makefile,v 1.8 2019/07/12 20:47:38 sthen Exp $

COMMENT=	dynamic .signature generator

DISTNAME=	signify-1.11
CATEGORIES=	mail

HOMEPAGE=	http://signify.sourceforge.net/

REVISION =	0

# Public domain
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=signify/}

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

WRKDIST=	${WRKDIR}/signify

EXAMPLESDIR=	${PREFIX}/share/examples/signify

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/signify.pl ${PREFIX}/bin/signify
	${INSTALL_MAN} ${WRKSRC}/signify.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
.for f in Columned Complex Simple SimpleOrColumned
	${INSTALL_DATA} ${WRKSRC}/examples/${f} ${EXAMPLESDIR}
.endfor

.include <bsd.port.mk>
