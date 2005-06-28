# $OpenBSD: Makefile,v 1.2 2005/06/28 17:46:43 aanriot Exp $

COMMENT=	"the Portable Forth Environment"

DISTNAME=	pfe-0.32.94
CATEGORIES=    	lang

HOMEPAGE=	http://pfe.sourceforge.net/

MAINTAINER=	Alexandre Anriot <aanriot@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pfe/}

WANTLIB=	c m ncurses

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pfe/
	${INSTALL_DATA} ${WRKDIST}/doc/Forthprimer.pdf \
		${PREFIX}/share/doc/pfe/

NO_REGRESS=	Yes

.include <bsd.port.mk>
