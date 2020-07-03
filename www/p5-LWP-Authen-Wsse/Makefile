# $OpenBSD: Makefile,v 1.10 2020/07/03 21:46:04 sthen Exp $

COMMENT=	library for enabling X-WSSE authentication in LWP

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	LWP-Authen-Wsse-0.05
REVISION=	2
CATEGORIES=	www

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	security/p5-Digest-SHA1 \
		www/p5-libwww

.include <bsd.port.mk>
