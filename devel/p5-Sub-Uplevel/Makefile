# $OpenBSD: Makefile,v 1.2 2006/06/25 14:48:15 espie Exp $

COMMENT= 	"Perl library for manipulating frame stack"

DISTNAME=	Sub-Uplevel-0.13
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Sub/}

CONFIGURE_STYLE= perl modbuild

MAKE_ENV=AUTHOR_TESTING=Yes

REGRESS_DEPENDS=	:p5-Test-Pod->=1.22:devel/p5-Test-Pod \
			:p5-test-Pod-Coverage->=1.08:devel/p5-Test-Pod-Coverage

PKG_ARCH=	*

.include <bsd.port.mk>
