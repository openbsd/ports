# $OpenBSD: Makefile,v 1.11 2010/11/19 07:23:07 espie Exp $

COMMENT=		program for indexing & searching email

DISTNAME=		mairix-0.21
REVISION =		0
CATEGORIES=		mail
HOMEPAGE=		http://www.rpcurnow.force9.co.uk/mairix/

MAINTAINER=		David Cathcart <cathcart@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mairix/} \
			http://www.rpcurnow.force9.co.uk/mairix/

WANTLIB=		c z bz2

BUILD_DEPENDS=		devel/bison
LIB_DEPENDS=		archivers/bzip2

CONFIGURE_STYLE=	simple
CONFIGURE_ENV= 		CPPFLAGS="-I${PREFIX}/include" \
			LDFLAGS="-L${PREFIX}/lib"
USE_GROFF =		Yes

NO_REGRESS=		Yes

.include <bsd.port.mk>
