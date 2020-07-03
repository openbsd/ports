# $OpenBSD: Makefile,v 1.12 2020/07/03 21:46:04 sthen Exp $

COMMENT=	virtual browser that retries on errors

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	LWP-UserAgent-Determined-1.03
REVISION=	2
CATEGORIES=	www

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-libwww
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
