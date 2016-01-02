# $OpenBSD: Makefile,v 1.10 2016/01/02 12:36:52 ajacoutot Exp $

COMMENT=	filehandle which supports ungetting of multiple bytes

MODULES=	cpan
DISTNAME=	FileHandle-Unget-0.1628
CATEGORIES=	devel

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	www/p5-URI
TEST_DEPENDS=	devel/p5-File-Slurp \
		devel/p5-Test-Po

.include <bsd.port.mk>
