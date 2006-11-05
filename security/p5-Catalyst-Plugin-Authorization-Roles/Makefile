# $OpenBSD: Makefile,v 1.1.1.1 2006/11/05 15:23:45 espie Exp $

COMMENT= 	"role based authorization for Catalyst"

DISTNAME=	Catalyst-Plugin-Authorization-Roles-0.05
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Catalyst/}

RUN_DEPENDS=	::devel/p5-Set-Object \
		::devel/p5-Universal-isa \
		::security/p5-Catalyst-Plugin-Authentication
REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Test-Exception \
		::devel/p5-Test-MockObject \
		::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE=perl
PKG_ARCH=	*

.include <bsd.port.mk>
