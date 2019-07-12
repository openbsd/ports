# $OpenBSD: Makefile,v 1.9 2019/07/12 20:50:50 sthen Exp $

COMMENT=	use SSI from CGI scripts

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	CGI-SSI-0.92
REVISION=	1
CATEGORIES=	www

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Time-TimeDate \
		www/p5-HTML-SimpleParse \
		www/p5-libwww

.include <bsd.port.mk>
