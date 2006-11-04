# $OpenBSD: Makefile,v 1.1.1.1 2006/11/04 17:43:58 espie Exp $

COMMENT=	"simple eyecandy ASCII Tables"

DISTNAME=	Text-SimpleTable-0.03
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Text/}

CONFIGURE_STYLE=perl modbuild

PKG_ARCH=	*
MAKE_ENV=	TEST_POD=Yes

# The coverage test fails, which is not critical
REGRESS_DEPENDS=::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
