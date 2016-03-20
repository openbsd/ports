# $OpenBSD: Makefile,v 1.12 2016/03/20 19:56:24 naddy Exp $

COMMENT=	filehandle which supports ungetting of multiple bytes

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	FileHandle-Unget-0.1628
CATEGORIES=	devel

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	www/p5-URI
TEST_DEPENDS=	devel/p5-File-Slurp \
		devel/p5-Test-Pod

.include <bsd.port.mk>
