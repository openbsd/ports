# $OpenBSD: Makefile,v 1.2 2006/11/14 10:22:12 espie Exp $

COMMENT= 	"plugin to Data::FormValidator for catalyst"

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-FormValidator-0.02
CATEGORIES=	www perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/p5-Catalyst-Runtime \
		::devel/p5-Data-FormValidator

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
