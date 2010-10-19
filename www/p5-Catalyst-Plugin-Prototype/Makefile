# $OpenBSD: Makefile,v 1.5 2010/10/19 08:02:55 espie Exp $

COMMENT=		catalyst plugin for prototype

MODULES=		cpan
DISTNAME=		Catalyst-Plugin-Prototype-1.33
CATEGORIES=		devel www
USE_GROFF =	Yes

MAINTAINER=		Sean Comeau <scomeau@obscurity.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::www/p5-Catalyst-Runtime \
			::devel/p5-Class-Data-Inheritable \
			::www/p5-HTML-Prototype

MAKE_ENV=		TEST_POD=Yes
CONFIGURE_STYLE=	modinst

post-extract:
	@rm ${WRKSRC}/lib/Catalyst/Plugin/._Prototype.pm

.include <bsd.port.mk>
