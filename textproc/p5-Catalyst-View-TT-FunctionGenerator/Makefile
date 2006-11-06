# $OpenBSD: Makefile,v 1.1.1.1 2006/11/06 13:00:43 espie Exp $

COMMENT= 	"use shorter names in catalyst tt views"

DISTNAME=	Catalyst-View-TT-FunctionGenerator-0.01
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5 devel

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Catalyst/}

RUN_DEPENDS=	::textproc/p5-Catalyst-View-TT \
		::www/p5-Catalyst-Plugin-Singleton
REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE=perl
PKG_ARCH=	*

.include <bsd.port.mk>
