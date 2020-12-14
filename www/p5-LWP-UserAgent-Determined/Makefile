# $OpenBSD: Makefile,v 1.13 2020/12/14 09:35:56 benoit Exp $

COMMENT=	virtual browser that retries on errors

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	LWP-UserAgent-Determined-1.07
CATEGORIES=	www

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-libwww
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
