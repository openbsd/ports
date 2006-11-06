# $OpenBSD: Makefile,v 1.1.1.1 2006/11/06 01:20:55 espie Exp $

COMMENT= 	"FastMmap storage backend for session data"

DISTNAME=	Catalyst-Plugin-Session-Store-FastMmap-0.02
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Catalyst/}

RUN_DEPENDS=	::www/p5-Catalyst-Runtime \
		::devel/p5-Cache-FastMmap \
		::www/p5-Catalyst-Plugin-Session
REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE=perl
PKG_ARCH=	*

.include <bsd.port.mk>
