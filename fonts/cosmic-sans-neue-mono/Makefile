# $OpenBSD: Makefile,v 1.2 2015/03/17 23:43:25 bcallah Exp $

COMMENT =	programming font designed with functionality in mind
DISTNAME =	cosmic-sans-neue-mono-1.3.1
CATEGORIES =	fonts x11

HOMEPAGE =	http://openfontlibrary.org/en/font/cosmic-sans-neue-mono
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# SIL Open Font License 1.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://mirrors.nycbug.org/pub/distfiles/

PKG_ARCH =	*
NO_BUILD =	Yes
NO_TEST =	Yes

FONTDIR =	${PREFIX}/lib/X11/fonts/CosmicSansNeueMono
DOCDIR =	${PREFIX}/share/doc/cosmic-sans-neue-mono

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/OTF/*.otf ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/README.md ${DOCDIR}

.include <bsd.port.mk>
