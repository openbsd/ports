# $OpenBSD: Makefile,v 1.2 2006/11/14 10:22:12 espie Exp $

COMMENT= 	"session framework for catalyst"

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-Session-0.13
CATEGORIES=	www

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/p5-Catalyst-Runtime \
		::devel/p5-Object-Signature
REGRESS_DEPENDS=::devel/p5-Test-Deep \
		::devel/p5-Test-Exception \
		::devel/p5-Test-MockObject \
		::www/p5-Catalyst-Plugin-Session-State-Cookie \
		::devel/p5-Test-WWW-Mechanize-Catalyst

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
