# $OpenBSD: Makefile,v 1.8 2016/03/20 19:57:17 naddy Exp $

COMMENT=	copy a HTML file without breaking links

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	HTML-Copy-1.31
CATEGORIES=	www

MAINTAINER=	Girish Venkatachalam <girish1729@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Class-Accessor \
		www/p5-HTML-Parser \
		www/p5-URI \
		www/p5-libwww

.include <bsd.port.mk>
