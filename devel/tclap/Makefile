# $OpenBSD: Makefile,v 1.1.1.1 2012/10/10 11:38:17 sthen Exp $

COMMENT=	templatized C++ command line parser

DISTNAME=	tclap-1.2.1

CATEGORIES=	devel

HOMEPAGE=	http://tclap.sourceforge.net/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tclap/}

# tclap is implemented using only header files
PKG_ARCH=	*

BUILD_DEPENDS=	devel/doxygen \
		math/graphviz

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
