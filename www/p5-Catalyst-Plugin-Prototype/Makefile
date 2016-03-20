# $OpenBSD: Makefile,v 1.11 2016/03/20 19:57:15 naddy Exp $

COMMENT=		catalyst plugin for prototype

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Catalyst-Plugin-Prototype-1.33
REVISION =		1
CATEGORIES=		devel www

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		www/p5-Catalyst-Runtime \
			devel/p5-Class-Data-Inheritable \
			www/p5-HTML-Prototype

MAKE_ENV=		TEST_POD=Yes
CONFIGURE_STYLE=	modinst

# we shan't be needing MacOS resource forks in these parts!
post-extract:
	@find ${WRKSRC} -name '._*' -exec rm {} +

.include <bsd.port.mk>
