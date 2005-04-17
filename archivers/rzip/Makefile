# $OpenBSD: Makefile,v 1.2 2005/04/17 19:43:52 espie Exp $

COMMENT=	"file compressor with a high compression ratio"

DISTNAME=	rzip-2.0
CATEGORIES=	archivers
HOMEPAGE=	http://rzip.samba.org/

MAINTAINER=	Lawrence Teo <lteo.openbsd1@mailnull.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c

MASTER_SITES=	${HOMEPAGE}ftp/rzip/

LIB_DEPENDS=    bz2::archivers/bzip2

FAKE=lib
CONFIGURE_STYLE=gnu dest
CONFIGURE_ENV=	CPPFLAGS="-I${DEPBASE}/include" \
		LDFLAGS="-L${DEPBASE}/lib"

NO_REGRESS=	Yes

.include <bsd.port.mk>
