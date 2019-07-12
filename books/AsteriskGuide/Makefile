# $OpenBSD: Makefile,v 1.5 2019/07/12 20:43:44 sthen Exp $

PKG_ARCH=		*

COMMENT=		Asterisk 1.4 PBX configuration guide, 2nd ed.

DISTNAME=		AsteriskGuideFree87P
PKGNAME=		AsteriskGuide-2.0
EXTRACT_SUFX=		.pdf
EXTRACT_ONLY=

CATEGORIES=		books telephony

HOMEPAGE=		http://www.asteriskguide.com/

MAINTAINER=		Diego Casati <diego.casati@gmai.com>

# CC-Attribution-NonCommercial-NoDerivs
# see page vii of the PDF
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://spacehopper.org/mirrors/ \
			${HOMEPAGE}pdf/

NO_BUILD=		Yes
NO_TEST=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/AsteriskGuide
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTFILES} \
	    ${PREFIX}/share/doc/AsteriskGuide/AsteriskGuide.pdf

.include <bsd.port.mk>
