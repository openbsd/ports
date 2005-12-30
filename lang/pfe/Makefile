# $OpenBSD: Makefile,v 1.3 2005/12/30 23:21:16 alek Exp $

COMMENT=	"Portable Forth Environment"

DISTNAME=	pfe-0.32.94
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=		pfe 32.94 \
			pfe-0 32.94
MODGNU_SHARED_LIBS=	pfe '-export-dynamic -release 0' \
			pfe-0 '-export-dynamic -release 0'
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

USE_LIBTOOL=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pfe/
	${INSTALL_DATA} ${WRKDIST}/doc/Forthprimer.pdf \
		${PREFIX}/share/doc/pfe/

NO_REGRESS=	Yes

.include <bsd.port.mk>
