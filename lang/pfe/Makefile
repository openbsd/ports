# $OpenBSD: Makefile,v 1.4 2006/07/17 16:59:59 espie Exp $

COMMENT=	"Portable Forth Environment"

DISTNAME=	pfe-0.32.94
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=		pfe 32.94 \
			pfe-0 32.94
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
CONFIGURE_ARGS+=	--mandir=${PREFIX}/man

USE_LIBTOOL=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pfe/
	${INSTALL_DATA} ${WRKDIST}/doc/Forthprimer.pdf \
		${PREFIX}/share/doc/pfe/

NO_REGRESS=	Yes

.include <bsd.port.mk>
