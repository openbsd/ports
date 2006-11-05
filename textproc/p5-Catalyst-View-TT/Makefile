# $OpenBSD: Makefile,v 1.1.1.1 2006/11/05 09:47:27 espie Exp $

COMMENT= 	"Template Toolkit views for Catalyst"

DISTNAME=	Catalyst-View-TT-0.23
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Catalyst/}

RUN_DEPENDS=	::devel/p5-Path-Class \
		::textproc/p5-Template-Timer \
		::www/p5-Catalyst-Runtime
REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE=perl
PKG_ARCH=	*

.include <bsd.port.mk>
