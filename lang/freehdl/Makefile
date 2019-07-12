# $OpenBSD: Makefile,v 1.13 2019/07/12 20:47:17 sthen Exp $

COMMENT=	open-source (C++ generating) VHDL simulator

DISTNAME=	freehdl-0.0.7
CATEGORIES=	lang cad
REVISION =	5

SHARED_LIBS +=  ieee                      0.0 # 0.0
SHARED_LIBS +=  freehdl-cdfggen           0.0 # 0.0
SHARED_LIBS +=  freehdl-fire              0.0 # 0.0
SHARED_LIBS +=  freehdl-kernel            0.0 # 0.0
SHARED_LIBS +=  freehdl-std               0.0 # 0.0
SHARED_LIBS +=  freehdl-vaul              0.0 # 0.0

HOMEPAGE=	http://www.freehdl.seul.org/

# (L)GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}/~enaroska/

WANTLIB += c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

USE_GMAKE=	Yes
CXXFLAGS +=	-Wno-parentheses-equality

# Configure checks for gnu libtool, but the build will use "our" libtool
BUILD_DEPENDS=  devel/libtool

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
