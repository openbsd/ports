# $OpenBSD: Makefile,v 1.2 2006/11/14 10:22:12 espie Exp $

COMMENT=		"dispatch XML-RPC methods with Catalyst"

MODULES=		cpan
DISTNAME=		Catalyst-Plugin-XMLRPC-1.0
CATEGORIES=		www

MAINTAINER=		Sean Comeau <scomeau@obscurity.org>

# same as perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::www/p5-Catalyst-Runtime \
			::net/p5-RPC-XML 

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
