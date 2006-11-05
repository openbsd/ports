# $OpenBSD: Makefile,v 1.1.1.1 2006/11/05 19:04:00 espie Exp $

COMMENT= 	"ACL support for Catalyst applications"

DISTNAME=	Catalyst-Plugin-Authorization-ACL-0.08
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Catalyst/}


RUN_DEPENDS=	::www/p5-Catalyst-Runtime \
		::devel/p5-Class-Throwable

REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage \
		::devel/p5-Test-WWW-Mechanize-Catalyst \
		::security/p5-Catalyst-Plugin-Authorization-Roles \
		::security/p5-Catalyst-Plugin-Authentication \
		::www/p5-Catalyst-Plugin-Session \
		::www/p5-Catalyst-Plugin-Session-State-Cookie

CONFIGURE_STYLE=perl
PKG_ARCH=	*
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
