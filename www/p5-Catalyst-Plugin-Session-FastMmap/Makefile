# $OpenBSD: Makefile,v 1.1.1.1 2006/11/05 20:56:24 espie Exp $

COMMENT= 	"FastMmap sessions for Catalyst"

DISTNAME=	Catalyst-Plugin-Session-FastMmap-0.12
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
		::devel/p5-Cache-FastMmap \
		::devel/p5-Class-Accessor \
		::devel/p5-Class-Data-Inheritable \
		::www/p5-URI \
		::www/p5-URI-Find
REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE=perl
PKG_ARCH=	*


.include <bsd.port.mk>
