# $OpenBSD: Makefile,v 1.8 2016/03/20 19:57:21 naddy Exp $

COMMENT=	library for enabling X-WSSE authentication in LWP

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	LWP-Authen-Wsse-0.05
REVISION=	1
CATEGORIES=	www

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	security/p5-Digest-SHA1 \
		www/p5-libwww

.include <bsd.port.mk>
