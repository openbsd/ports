# $OpenBSD: Makefile,v 1.14 2020/07/03 21:45:58 sthen Exp $

COMMENT=		catalyst plugin for prototype

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Catalyst-Plugin-Prototype-1.33
REVISION =		2
CATEGORIES=		devel www

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		www/p5-Catalyst-Runtime \
			devel/p5-Class-Data-Inheritable \
			www/p5-HTML-Prototype

MAKE_ENV=		TEST_POD=Yes
CONFIGURE_STYLE=	modinst

# we shan't be needing MacOS resource forks in these parts!
post-extract:
	@find ${WRKSRC} -name '._*' -delete

.include <bsd.port.mk>
