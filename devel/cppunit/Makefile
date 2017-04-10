# $OpenBSD: Makefile,v 1.13 2017/04/10 11:45:25 sthen Exp $

COMMENT=	c++ unit testing framework
DISTNAME=	cppunit-1.12.1
SHARED_LIBS +=	cppunit              3.0      # .1.0
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cppunit/}
REVISION=	0

HOMEPAGE=	http://cppunit.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE=		Yes
WANTLIB=		c m ${LIBCXX}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-doxygen

.include <bsd.port.mk>
