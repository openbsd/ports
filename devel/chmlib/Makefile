# $OpenBSD: Makefile,v 1.13 2013/03/21 08:45:14 ajacoutot Exp $

COMMENT=	handling CHM files
CATEGORIES=	devel textproc

HOMEPAGE=	http://www.jedrea.com/chmlib/
MASTER_SITES=	${HOMEPAGE}

DISTNAME=	chmlib-0.40
REVISION =	1
SHARED_LIBS +=	chm                  0.2      # .0.0

CONFIGURE_STYLE=gnu

# stupid linux shit
CONFIGURE_ARGS =	--disable-io64 --enable-examples

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

NO_TEST=	Yes

.include <bsd.port.mk>
