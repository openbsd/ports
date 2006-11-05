# $OpenBSD: Makefile,v 1.1.1.1 2006/11/05 14:01:20 espie Exp $

COMMENT= 	"catalyst session IDs with cookies"

DISTNAME=	Catalyst-Plugin-Session-State-Cookie-0.06
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Catalyst/}

RUN_DEPENDS=	::www/p5-Catalyst-Plugin-Session
REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Test-MockObject \
		::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage \
		::devel/p5-Test-WWW-Mechanize-Catalyst

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE=perl
PKG_ARCH=	*

.include <bsd.port.mk>
