# $OpenBSD: Makefile,v 1.7 2019/07/12 20:43:44 sthen Exp $

PKG_ARCH=		*

COMMENT=		Asterisk: The Future of Telephony

PKGNAME=		AsteriskTFOT-2.0
DISTNAME=		9780596510480# ISBN-13 filename
EXTRACT_SUFX=	.pdf

EXTRACT_CASES=  *) cp ${FULLDISTDIR}/$$archive ${WRKDIST};;

CATEGORIES=		books telephony

HOMEPAGE=		http://www.oreilly.com/catalog/asterisk

MAINTAINER=		Ian Darwin <ian@openbsd.org>

# Creative Commons Copyright, see page xi of the PDF
PERMIT_PACKAGE=	Yes

MASTER_SITES=		http://downloads.oreilly.com/books/

NO_BUILD=		Yes

INSTALL_LOC=		${PREFIX}/share/doc/asterisk

WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${INSTALL_LOC}
	${INSTALL_DATA} ${WRKDIST}/${DISTNAME}.pdf ${INSTALL_LOC}/${PKGNAME}.pdf

NO_TEST=		Yes

.include <bsd.port.mk>
