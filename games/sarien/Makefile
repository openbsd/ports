# $OpenBSD: Makefile,v 1.7 2005/11/09 20:09:56 fgsch Exp $

COMMENT=		"interpreter for old Sierra AGI games"

DISTNAME=		sarien-0.7.0
CATEGORIES=		games emulators

HOMEPAGE=		http://sarien.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c pthread

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/scripts
USE_GMAKE=		Yes
USE_X11=		Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sarien/}

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/sarien ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sarien
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sarien
	${INSTALL_DATA} ${WRKSRC}/doc/README.agi ${PREFIX}/share/doc/sarien
	${INSTALL_DATA} ${WRKSRC}/doc/Changelog ${PREFIX}/share/doc/sarien
	${INSTALL_DATA} ${WRKSRC}/etc/sarien.cfg \
	    ${PREFIX}/share/examples/sarien

.include <bsd.port.mk>
