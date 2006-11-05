# $OpenBSD: Makefile,v 1.1.1.1 2006/11/05 20:08:20 espie Exp $

COMMENT=	"instantiate plugins as they're found"

DISTNAME=	Module-Pluggable-Fast-0.18
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Module/}

RUN_DEPENDS=	:p5-Universal-exports-<=0.05|p5-Universal-require-*:devel/p5-Universal-require
REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
