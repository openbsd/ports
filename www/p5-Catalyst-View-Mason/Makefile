# $OpenBSD: Makefile,v 1.1.1.1 2006/11/05 10:00:41 espie Exp $

COMMENT= 	"Catalyst views using Mason components"

DISTNAME=	Catalyst-View-Mason-0.08
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Catalyst/}

RUN_DEPENDS=	::www/p5-Catalyst-Runtime \
		::www/p5-HTML-Mason

REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage

CONFIGURE_STYLE=perl modbuild
MAKE_ENV=	TEST_POD=Yes

PKG_ARCH=	*

.include <bsd.port.mk>
