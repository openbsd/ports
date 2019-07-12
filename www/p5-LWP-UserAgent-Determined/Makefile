# $OpenBSD: Makefile,v 1.11 2019/07/12 20:50:56 sthen Exp $

COMMENT=	virtual browser that retries on errors

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	LWP-UserAgent-Determined-1.03
REVISION=	1
CATEGORIES=	www

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-libwww
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
