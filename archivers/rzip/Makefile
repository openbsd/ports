COMMENT=	file compressor with a high compression ratio

DISTNAME=	rzip-2.1
REVISION=	2
CATEGORIES=	archivers
HOMEPAGE=	https://rzip.samba.org/

MAINTAINER=	Lawrence Teo <lteo@openbsd.org>

# GPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}ftp/rzip/ \
		${HOMEPAGE}ftp/rzip/old-versions/

LIB_DEPENDS =	archivers/bzip2
WANTLIB =	c bz2

CONFIGURE_STYLE=gnu dest
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST=	Yes

.include <bsd.port.mk>
