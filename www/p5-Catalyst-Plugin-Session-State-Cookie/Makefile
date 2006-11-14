# $OpenBSD: Makefile,v 1.2 2006/11/14 10:22:12 espie Exp $

COMMENT= 	"catalyst session IDs with cookies"

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-Session-State-Cookie-0.06
CATEGORIES=	www

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/p5-Catalyst-Plugin-Session
REGRESS_DEPENDS=::devel/p5-Test-MockObject \
		::devel/p5-Test-WWW-Mechanize-Catalyst

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
