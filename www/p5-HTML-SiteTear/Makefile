# $OpenBSD: Makefile,v 1.11 2019/07/08 08:47:56 cwen Exp $

COMMENT=	make a separate copy of a web site in local file system

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	HTML-SiteTear-1.46
CATEGORIES=	www

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Class-Accessor \
		www/p5-HTML-Copy \
		www/p5-HTML-Parser>=3.4 \
		www/p5-URI

.include <bsd.port.mk>
