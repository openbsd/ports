# $OpenBSD: Makefile,v 1.2 2002/05/13 18:50:43 espie Exp $

COMMENT=		"interpreter for old Sierra AGI games"

DISTNAME=		sarien-0.7.0
CATEGORIES=		games emulators
NEED_VERSION=		1.504

MAINTAINER=		Aaron Campbell <aaron@openbsd.org>

HOMEPAGE=		http://sarien.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
USE_GMAKE=		Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sarien/}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/sarien ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sarien
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sarien
	${INSTALL_DATA} ${WRKSRC}/doc/README.agi ${PREFIX}/share/doc/sarien
	${INSTALL_DATA} ${WRKSRC}/doc/Changelog ${PREFIX}/share/doc/sarien
	${INSTALL_DATA} ${WRKSRC}/etc/sarien.cfg \
	    ${PREFIX}/share/examples/sarien

.include <bsd.port.mk>
