# $OpenBSD: Makefile,v 1.9 2019/07/12 20:50:56 sthen Exp $

COMMENT=	library for enabling X-WSSE authentication in LWP

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	LWP-Authen-Wsse-0.05
REVISION=	1
CATEGORIES=	www

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	security/p5-Digest-SHA1 \
		www/p5-libwww

.include <bsd.port.mk>
