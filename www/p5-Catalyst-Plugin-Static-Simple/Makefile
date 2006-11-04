# $OpenBSD: Makefile,v 1.1.1.1 2006/11/04 23:23:46 espie Exp $

COMMENT= 	"serving static pages with catalyst"

DISTNAME=	Catalyst-Plugin-Static-Simple-0.14
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Catalyst/}

RUN_DEPENDS=	::www/p5-Catalyst-Runtime \
		::mail/p5-MIME-Types
REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage \
		::www/p5-Catalyst-Plugin-SubRequest

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE=perl modbuild
PKG_ARCH=	*

.include <bsd.port.mk>
