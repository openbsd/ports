# $OpenBSD: Makefile,v 1.12 2013/03/11 10:50:02 espie Exp $

COMMENT=	handling CHM files
CATEGORIES=	devel textproc

HOMEPAGE=	http://www.jedrea.com/chmlib/
MASTER_SITES=	${HOMEPAGE}

DISTNAME=	chmlib-0.40
REVISION =	1
SHARED_LIBS +=	chm                  0.2      # .0.0

CONFIGURE_STYLE=gnu
USE_LIBTOOL=	Yes

# stupid linux shit
CONFIGURE_ARGS =	--disable-io64 --enable-examples

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

NO_TEST=	Yes

.include <bsd.port.mk>
