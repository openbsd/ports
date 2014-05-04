# $OpenBSD: Makefile,v 1.7 2014/05/04 15:33:05 benoit Exp $

COMMENT=	copy a HTML file without breaking links

MODULES=	cpan
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
