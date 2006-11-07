# $OpenBSD: Makefile,v 1.1.1.1 2006/11/07 12:29:20 espie Exp $

COMMENT=	"jcode interface for catalyst"

DISTNAME=	Catalyst-Plugin-Charsets-Japanese-0.06
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	converters perl5 www

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Catalyst/}

RUN_DEPENDS=	::converters/p5-Jcode \
		::www/p5-Catalyst-Runtime

REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Test-Pod

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
