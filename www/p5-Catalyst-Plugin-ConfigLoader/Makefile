# $OpenBSD: Makefile,v 1.1.1.1 2006/11/04 20:34:21 espie Exp $

COMMENT= 	"catalyst plugin to Config::Any"

DISTNAME=	Catalyst-Plugin-ConfigLoader-0.13
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Catalyst/}

RUN_DEPENDS=	::devel/p5-Config-Any \
		::devel/p5-Data-Visitor \
		::devel/p5-Module-Pluggable \
		::www/p5-Catalyst-Runtime
REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage

CONFIGURE_STYLE=perl build
PKG_ARCH=	*

.include <bsd.port.mk>
