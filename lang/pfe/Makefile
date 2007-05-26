# $OpenBSD: Makefile,v 1.6 2007/05/26 04:03:08 aanriot Exp $

COMMENT=	"Portable Forth Environment"

DISTNAME=	pfe-0.32.94
PKGNAME=	${DISTNAME}p3
SHARED_LIBS +=	pfe			32.95	# .32.94
SHARED_LIBS +=	pfe-0			32.95
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
CONFIGURE_ARGS=		--mandir=${PREFIX}/man

USE_LIBTOOL=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pfe/
	${INSTALL_DATA} ${WRKDIST}/doc/Forthprimer.pdf \
		${PREFIX}/share/doc/pfe/

NO_REGRESS=	Yes

.include <bsd.port.mk>
