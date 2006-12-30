# $OpenBSD: Makefile,v 1.5 2006/12/30 16:24:05 aanriot Exp $

COMMENT=	"Portable Forth Environment"

DISTNAME=	pfe-0.32.94
PKGNAME=	${DISTNAME}p2
SHARED_LIBS=		pfe 32.94 \
			pfe-0 32.94
CATEGORIES=    	lang

HOMEPAGE=	http://pfe.sourceforge.net/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pfe/}

WANTLIB=	c m ncurses

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--mandir=${PREFIX}/man

USE_LIBTOOL=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pfe/
	${INSTALL_DATA} ${WRKDIST}/doc/Forthprimer.pdf \
		${PREFIX}/share/doc/pfe/

NO_REGRESS=	Yes

.include <bsd.port.mk>
