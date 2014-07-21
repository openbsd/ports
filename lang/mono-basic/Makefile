# $OpenBSD: Makefile,v 1.14 2014/07/21 10:36:36 ajacoutot Exp $

COMMENT=	Visual Basic .NET support for Mono
DISTNAME=	mono-basic-2.10
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	lang
MASTER_SITES=	http://origin-download.mono-project.com/sources/mono-basic/

HOMEPAGE=	http://www.mono-project.com/Visual_Basic

# LGPL v2
PERMIT_PACKAGE_CDROM=	Yes

USE_GMAKE=	Yes

MODULES=	lang/mono

CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--prefix="${TRUEPREFIX}"

TEST_TARGET=	test

.include <bsd.port.mk>
