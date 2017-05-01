# $OpenBSD: Makefile,v 1.4 2017/05/01 19:00:21 rsadowski Exp $

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

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS +=	--disable-doxygen

.include <bsd.port.mk>
