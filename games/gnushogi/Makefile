# $OpenBSD: Makefile,v 1.16 2002/05/13 18:50:42 espie Exp $
#

COMMENT=	"GNU version of Shogi"

DISTNAME=	gnushogi-1.2p03
PKGNAME=	gnushogi-1.2.3
CATEGORIES=	games
NEED_VERSION=	1.515

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=gnushogi/}

DOCFILES= BOOKFILES CHANGES CONTRIB COPYING GENERAL INSTALL PORTING \
	README-FIRST listserv.ref shogi.rules tutorial1.gam tutorial2.gam

post-configure:
	echo "DISTDIR=${WRKDIR}" >> ${WRKSRC}/src/Makefile
	echo "prefix=${PREFIX}" >> ${WRKSRC}/src/Makefile

do-build:
	cd ${WRKSRC}/src; \
	${MAKE} gnushogir; \
	${MAKE} gnushogi.bbk; \
	${MAKE} gnushogi; \
	${MAKE} gnushogix

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/gnushogi
	${INSTALL_PROGRAM} ${WRKSRC}/src/gnushogi ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/src/gnushogir ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/src/gnushogix ${PREFIX}/libexec
	${INSTALL_DATA} ${WRKSRC}/src/gnushogi.bbk ${PREFIX}/share/gnushogi
	${INSTALL_MAN} ${WRKSRC}/doc/gnushogi.1 ${PREFIX}/man/man6/gnushogi.6
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnushogi
.for doc in ${DOCFILES}
	${INSTALL_DATA} ${WRKSRC}/doc/${doc} ${PREFIX}/share/doc/gnushogi
.endfor

.include <bsd.port.mk>
