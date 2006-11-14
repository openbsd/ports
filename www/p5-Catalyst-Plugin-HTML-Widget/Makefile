# $OpenBSD: Makefile,v 1.2 2006/11/14 10:22:12 espie Exp $

COMMENT= 	"HTML widget and validation framework for Catalyst"

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-HTML-Widget-1.1
CATEGORIES=	www

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/p5-Catalyst-Runtime \
		::www/p5-HTML-Widget

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
