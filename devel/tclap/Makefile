# $OpenBSD: Makefile,v 1.3 2015/05/22 11:31:14 ajacoutot Exp $

COMMENT=	templatized C++ command line parser

DISTNAME=	tclap-1.2.1
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	http://tclap.sourceforge.net/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tclap/}

# tclap is implemented using only header files
PKG_ARCH=	*

BUILD_DEPENDS=	devel/doxygen \
		math/graphviz

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
