# $OpenBSD: Makefile,v 1.7 2009/04/24 14:43:16 kurt Exp $

COMMENT=		program for indexing & searching email

DISTNAME=		mairix-0.21
PKGNAME=		${DISTNAME}p0
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

WANTLIB=		c z

BUILD_DEPENDS=		:bison-*:devel/bison
LIB_DEPENDS=		bz2::archivers/bzip2

CONFIGURE_STYLE=	simple
CONFIGURE_ENV= 		CPPFLAGS="-I${PREFIX}/include" \
			LDFLAGS="-L${PREFIX}/lib"

NO_REGRESS=		Yes

.include <bsd.port.mk>
