# $OpenBSD: Makefile,v 1.10 2012/02/22 14:05:01 giovanni Exp $

COMMENT=	handling CHM files
CATEGORIES=	devel textproc

HOMEPAGE=	http://www.jedrea.com/chmlib/
MASTER_SITES=	${HOMEPAGE}

DISTNAME=	chmlib-0.40
REVISION =	0
SHARED_LIBS +=	chm                  0.2      # .0.0

CONFIGURE_STYLE=gnu
USE_LIBTOOL=	Yes

# stupid linux shit
CONFIGURE_ARGS =	--disable-io64 --enable-examples

WANTLIB=	pthread

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

.include <bsd.port.mk>
