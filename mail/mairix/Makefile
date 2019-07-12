# $OpenBSD: Makefile,v 1.16 2019/07/12 20:47:29 sthen Exp $

COMMENT=		program for indexing & searching email

DISTNAME=		mairix-0.23
CATEGORIES=		mail
HOMEPAGE=		http://www.rpcurnow.force9.co.uk/mairix/

# GPLv2
PERMIT_PACKAGE=	Yes

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
