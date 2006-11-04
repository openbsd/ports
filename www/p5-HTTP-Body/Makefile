# $OpenBSD: Makefile,v 1.1.1.1 2006/11/04 19:18:03 espie Exp $

COMMENT=	"HTTP Body Parser"

DISTNAME=	HTTP-Body-0.6
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=HTTP/}

CONFIGURE_STYLE=perl

PKG_ARCH=	*

MAKE_ENV=	TEST_POD=Yes
REGRESS_DEPENDS=::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage



.include <bsd.port.mk>
