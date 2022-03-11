COMMENT=	c++ unit testing framework

DISTNAME=	cppunit-1.14.0

SHARED_LIBS +=	cppunit		4.0 # 1.14.0

CATEGORIES=	devel

HOMEPAGE=	https://www.freedesktop.org/wiki/Software/cppunit/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB=		c m ${COMPILER_LIBCXX}

MASTER_SITES=		https://dev-www.libreoffice.org/src/

COMPILER =		base-clang ports-gcc

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-doxygen

.include <bsd.port.mk>
