# $OpenBSD: Makefile,v 1.1.1.1 2007/01/19 13:10:32 ian Exp $

PKG_ARCH=		*

COMMENT=		"Asterisk: The Future of Telephony"

DISTNAME=		AsteriskTFOT
PKGNAME=		AsteriskTFOT-1.0
EXTRACT_SUFX=		.zip

CATEGORIES=		books telephony

HOMEPAGE=		http://www.oreilly.com/catalog/asterisk

MAINTAINER=		Ian Darwin <ian@openbsd.org>

# Creative Commons Copyright
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.nufone.net/downloads/asteriskdocs/ \
			http://asterisk.howtoz.net/ \
			http://www.speakup.nl/en/opensource/asterisktfot/

NO_BUILD=		Yes

INSTALL_LOC=		${PREFIX}/share/doc/asterisk

do-install:
	${INSTALL_DATA_DIR} ${INSTALL_LOC}
	${INSTALL_DATA} ${WRKDIR}/AsteriskTFOT.pdf ${INSTALL_LOC}

NO_REGRESS=		Yes

.include <bsd.port.mk>
