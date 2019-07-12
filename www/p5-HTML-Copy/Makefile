# $OpenBSD: Makefile,v 1.10 2019/07/12 20:50:53 sthen Exp $

COMMENT=	copy a HTML file without breaking links

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	HTML-Copy-1.31
CATEGORIES=	www
REVISION=	0

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Class-Accessor \
		www/p5-HTML-Parser \
		www/p5-URI \
		www/p5-libwww

.include <bsd.port.mk>
