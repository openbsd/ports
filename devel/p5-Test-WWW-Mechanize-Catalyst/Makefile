# $OpenBSD: Makefile,v 1.1.1.1 2006/11/05 13:39:24 espie Exp $

COMMENT=        "Test-WWW-Mechanize extension for catalyst"

DISTNAME=	Test-WWW-Mechanize-Catalyst-0.37
PKGNAME=	p5-${DISTNAME}
CATEGORIES=     devel perl5 www

# Artistic and GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Test/}

RUN_DEPENDS=	::devel/p5-Test-WWW-Mechanize \
		::www/p5-Catalyst-Runtime

REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage

CONFIGURE_STYLE=perl modbuild

PKG_ARCH=	*

.include <bsd.port.mk>
