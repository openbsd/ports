# $OpenBSD: Makefile,v 1.8 2015/01/21 14:43:33 sthen Exp $

COMMENT=	virtual browser that retries on errors

MODULES=	cpan
DISTNAME=	LWP-UserAgent-Determined-1.03
REVISION=	0
CATEGORIES=	www

MAINTAINER=	Sam Smith <s@msmith.net>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-libwww
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
