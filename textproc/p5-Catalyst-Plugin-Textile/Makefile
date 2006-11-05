# $OpenBSD: Makefile,v 1.1.1.1 2006/11/05 09:50:13 espie Exp $

COMMENT=	"Textile for Catalyst"

DISTNAME=	Catalyst-Plugin-Textile-0.01
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Catalyst/}

RUN_DEPENDS=	::textproc/p5-Text-Textile \
		::www/p5-Catalyst-Runtime
REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
