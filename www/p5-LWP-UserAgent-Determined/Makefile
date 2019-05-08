# $OpenBSD: Makefile,v 1.10 2019/05/08 15:44:46 danj Exp $

COMMENT=	virtual browser that retries on errors

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	LWP-UserAgent-Determined-1.03
REVISION=	1
CATEGORIES=	www

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-libwww
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
