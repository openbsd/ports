# $OpenBSD: Makefile,v 1.2 2006/11/04 20:21:43 espie Exp $

COMMENT= 	"sensible default end action for catalyst"

DISTNAME=	Catalyst-Action-RenderView-0.04
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	www perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Catalyst/}

RUN_DEPENDS=	::www/p5-Catalyst-Runtime
REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE=perl modbuild
PKG_ARCH=	*

.include <bsd.port.mk>
