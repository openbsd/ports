# $OpenBSD: Makefile,v 1.1.1.1 2006/11/05 11:53:23 espie Exp $

COMMENT= 	"model class for catalyst"

DISTNAME=	Catalyst-Model-DBIC-Schema-0.18
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Catalyst/}

RUN_DEPENDS=	::databases/p5-DBIx-Class-Schema-Loader \
		::www/p5-Catalyst-Devel
REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE=perl modbuild
PKG_ARCH=	*

.include <bsd.port.mk>
