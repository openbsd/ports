# $OpenBSD: Makefile,v 1.1.1.1 2006/12/30 18:45:32 jasper Exp $

COMMENT=	"Small Device C Compiler"

DISTNAME=	sdcc-2.6.0
CATEGORIES=    	devel

HOMEPAGE=	http://sdcc.sourceforge.net/

MAINTAINER=	Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m stdc++

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sdcc/}

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/gputils

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		docdir=${PREFIX}/share/doc/sdcc
CONFIGURE_ENV=	 	sdcc_cv_CCggdb=no

USE_GMAKE=		Yes

WRKDIST=		${WRKDIR}/sdcc

.include <bsd.port.mk>
