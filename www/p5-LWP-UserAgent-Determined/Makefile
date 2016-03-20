# $OpenBSD: Makefile,v 1.9 2016/03/20 19:57:21 naddy Exp $

COMMENT=	virtual browser that retries on errors

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	LWP-UserAgent-Determined-1.03
REVISION=	0
CATEGORIES=	www

MAINTAINER=	Sam Smith <s@msmith.net>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-libwww
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
