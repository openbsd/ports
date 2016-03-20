# $OpenBSD: Makefile,v 1.8 2016/03/20 19:57:14 naddy Exp $

COMMENT=	use SSI from CGI scripts

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	CGI-SSI-0.92
REVISION=	1
CATEGORIES=	www

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Time-TimeDate \
		www/p5-HTML-SimpleParse \
		www/p5-libwww

.include <bsd.port.mk>
