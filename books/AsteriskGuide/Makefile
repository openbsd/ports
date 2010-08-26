# $OpenBSD: Makefile,v 1.2 2010/08/26 13:30:08 sthen Exp $

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
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://spacehopper.org/mirrors/ \
			${HOMEPAGE}pdf/

NO_BUILD=		Yes
NO_REGRESS=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/AsteriskGuide
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTFILES} \
	    ${PREFIX}/share/doc/AsteriskGuide/AsteriskGuide.pdf

.include <bsd.port.mk>
