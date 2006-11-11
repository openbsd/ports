# $OpenBSD: Makefile,v 1.1.1.1 2006/11/11 18:12:58 espie Exp $

COMMENT= 	"dispatcher for command line interface programs"

DISTNAME=	App-CLI-0.06
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=App/}

RUN_DEPENDS=	::devel/p5-Locale-Maketext-Simple

REGRESS_DEPENDS=${RUN_DEPENDS}

CONFIGURE_STYLE=perl
MAKE_ENV=	TEST_POD=Yes

PKG_ARCH=	*

.include <bsd.port.mk>
