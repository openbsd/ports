# $OpenBSD: Makefile,v 1.17 2018/10/24 14:27:59 sthen Exp $

COMMENT=	c++ unit testing framework
DISTNAME=	cppunit-1.12.1
SHARED_LIBS +=	cppunit              3.0      # .1.0
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cppunit/}
REVISION =	4

HOMEPAGE=	http://cppunit.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE=		Yes
WANTLIB=		c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-doxygen

.include <bsd.port.mk>
