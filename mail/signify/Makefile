# $OpenBSD: Makefile,v 1.3 2007/09/16 00:17:06 merdely Exp $

COMMENT=	dynamic .signature generator

DISTNAME=	signify-1.11
CATEGORIES=	mail

HOMEPAGE=	http://signify.sourceforge.net/

MAINTAINER=	Andreas Kahari <andreas.kahari@gmail.com>

# Public domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=signify/}

NO_BUILD=	Yes
NO_REGRESS=	Yes
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
