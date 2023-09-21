COMMENT=	templatized C++ command line parser

DISTNAME=	tclap-1.2.2

CATEGORIES=	devel

HOMEPAGE=	http://tclap.sourceforge.net/

# MIT
PERMIT_PACKAGE=	Yes

SITES=		${SITE_SOURCEFORGE:=tclap/}

# tclap is implemented using only header files
PKG_ARCH=	*

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS +=	--disable-doxygen

.include <bsd.port.mk>
