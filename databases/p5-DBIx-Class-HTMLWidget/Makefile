# $OpenBSD: Makefile,v 1.1.1.1 2006/11/07 11:54:54 espie Exp $

COMMENT= 	"publish DBIx::Class on the web"

DISTNAME=	DBIx-Class-HTMLWidget-0.07
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl5 www

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=DBIx/}

CONFIGURE_STYLE= perl

RUN_DEPENDS=	::databases/p5-DBIx-Class \
		::www/p5-HTML-Widget


REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage

MAKE_ENV=	TEST_POD=Yes

PKG_ARCH=	*

.include <bsd.port.mk>
