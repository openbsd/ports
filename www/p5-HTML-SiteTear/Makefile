# $OpenBSD: Makefile,v 1.9 2016/03/20 19:57:18 naddy Exp $

COMMENT=	make a separate copy of a web site in local file system

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	HTML-SiteTear-1.44
CATEGORIES=	www

MAINTAINER=	Girish Venkatachalam <girish1729@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Class-Accessor \
		www/p5-HTML-Copy \
		www/p5-HTML-Parser \
		www/p5-HTML-Tagset \
		www/p5-URI \
		www/p5-libwww

BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
