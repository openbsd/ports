# $OpenBSD: Makefile,v 1.13 2012/10/15 15:18:32 sthen Exp $

COMMENT=		program for indexing & searching email

DISTNAME=		mairix-0.22
CATEGORIES=		mail
HOMEPAGE=		http://www.rpcurnow.force9.co.uk/mairix/

MAINTAINER=		David Cathcart <cathcart@openbsd.org>

# GPLv2
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

NO_REGRESS=		Yes

.include <bsd.port.mk>
