# $OpenBSD: Makefile,v 1.18 2018/12/19 20:20:35 jca Exp $

COMMENT=	c++ unit testing framework

DISTNAME=	cppunit-1.12.1
REVISION =	4

SHARED_LIBS +=	cppunit              3.0      # .1.0

CATEGORIES=	devel

HOMEPAGE=	http://cppunit.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m ${COMPILER_LIBCXX}

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=cppunit/}

COMPILER =		base-clang ports-gcc base-gcc

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-doxygen

.include <bsd.port.mk>
