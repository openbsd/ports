# $OpenBSD: Makefile,v 1.9 2019/05/04 01:18:59 danj Exp $

COMMENT=	copy a HTML file without breaking links

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	HTML-Copy-1.31
CATEGORIES=	www
REVISION=	0

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Class-Accessor \
		www/p5-HTML-Parser \
		www/p5-URI \
		www/p5-libwww

.include <bsd.port.mk>
