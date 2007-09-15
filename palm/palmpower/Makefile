# $OpenBSD: Makefile,v 1.4 2007/09/15 19:00:55 steven Exp $

COMMENT=	disassembler and other tools for palmos binaries

VERSION=	1.0.2
DISTNAME=	palmpower-${VERSION}
CATEGORIES=	palm

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c m

MASTER_SITES=	http://www.fh-wilhelmshaven.de/~akcaagaa/palmpower/files/

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CFLAGS="-Dunix ${CFLAGS}"

post-build:
	@(cd ${WRKSRC}/utils && ${CC} ${CFLAGS} -o splitprc splitprc.c)

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/pila/pila ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/src/pilotdis/pilotdis ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/utils/splitprc ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/pilotdis.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/palmpower
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/palmpower
	${INSTALL_DATA} ${WRKSRC}/FAQ ${PREFIX}/share/doc/palmpower

.include <bsd.port.mk>
