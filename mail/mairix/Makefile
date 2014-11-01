# $OpenBSD: Makefile,v 1.15 2014/11/01 17:17:53 benoit Exp $

COMMENT=		program for indexing & searching email

DISTNAME=		mairix-0.23
CATEGORIES=		mail
HOMEPAGE=		http://www.rpcurnow.force9.co.uk/mairix/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mairix/} \
			http://www.rpcurnow.force9.co.uk/mairix/

WANTLIB=		c z bz2

BUILD_DEPENDS=		devel/bison
LIB_DEPENDS=		archivers/bzip2

CONFIGURE_STYLE=	simple
CONFIGURE_ENV= 		CPPFLAGS="-I${PREFIX}/include" \
			LDFLAGS="-L${PREFIX}/lib"

NO_TEST=		Yes

.include <bsd.port.mk>
