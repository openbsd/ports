# $OpenBSD: Makefile,v 1.1.1.1 2006/11/04 23:19:25 espie Exp $

COMMENT= 	"map subrequests to actions in Catalyst"

DISTNAME=	Catalyst-Plugin-SubRequest-0.10
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Catalyst/}

RUN_DEPENDS=	::www/p5-Catalyst-Runtime \
		::devel/p5-File-Slurp
REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage

MAKE_ENV=	TEST_POD=yes
CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
