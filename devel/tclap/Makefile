# $OpenBSD: Makefile,v 1.2 2013/03/11 10:50:31 espie Exp $

COMMENT=	templatized C++ command line parser

DISTNAME=	tclap-1.2.1

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
