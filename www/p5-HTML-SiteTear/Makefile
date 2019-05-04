# $OpenBSD: Makefile,v 1.10 2019/05/04 01:18:59 danj Exp $

COMMENT=	make a separate copy of a web site in local file system

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	HTML-SiteTear-1.44
CATEGORIES=	www
REVISION=	0

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
