# $OpenBSD: Makefile,v 1.3 2008/04/10 00:00:57 ian Exp $

PKG_ARCH=		*

COMMENT=		Asterisk: The Future of Telephony

PKGNAME=		AsteriskTFOT-2.0
DISTNAME=		9780596510480 # ISBN-13 filename
EXTRACT_SUFX=	.pdf

EXTRACT_CASES=  *) cp ${FULLDISTDIR}/$$archive ${WRKDIST};;

CATEGORIES=		books telephony

HOMEPAGE=		http://www.oreilly.com/catalog/asterisk

MAINTAINER=		Ian Darwin <ian@openbsd.org>

# Creative Commons Copyright, see page xi of the PDF
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://downloads.oreilly.com/books/ 

NO_BUILD=		Yes

INSTALL_LOC=		${PREFIX}/share/doc/asterisk

WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${INSTALL_LOC}
	${INSTALL_DATA} ${WRKDIST}/${DISTNAME}.pdf ${INSTALL_LOC}/${PKGNAME}.pdf

NO_REGRESS=		Yes

.include <bsd.port.mk>
