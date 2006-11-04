# $OpenBSD: Makefile,v 1.1.1.1 2006/11/04 23:29:18 espie Exp $

COMMENT=	"create and manipulate PAR distributions"

DISTNAME=	PAR-Dist-0.21
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=PAR/}

CONFIGURE_STYLE=perl

MAKE_ENV=	PERL_TEST_POD=Yes

REGRESS_DEPENDS=::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage

PKG_ARCH=	*

.include <bsd.port.mk>
