# $OpenBSD: Makefile,v 1.11 2020/07/03 21:46:00 sthen Exp $

COMMENT=	copy a HTML file without breaking links

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	HTML-Copy-1.31
CATEGORIES=	www
REVISION=	1

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Class-Accessor \
		www/p5-HTML-Parser \
		www/p5-URI \
		www/p5-libwww

.include <bsd.port.mk>
