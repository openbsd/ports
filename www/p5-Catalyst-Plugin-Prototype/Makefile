# $OpenBSD: Makefile,v 1.9 2013/03/11 11:44:44 espie Exp $

COMMENT=		catalyst plugin for prototype

MODULES=		cpan
DISTNAME=		Catalyst-Plugin-Prototype-1.33
REVISION=		0
CATEGORIES=		devel www
USE_GROFF =		Yes

MAINTAINER=		Sean Comeau <scomeau@obscurity.org>

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
