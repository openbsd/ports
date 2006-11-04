# $OpenBSD: Makefile,v 1.2 2006/11/04 20:21:43 espie Exp $

COMMENT= 	"MVC Web Application Framework"

DISTNAME=	Catalyst-Runtime-5.7003
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	www perl5

HOMEPAGE=	http://www.catalystframework.org/

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Catalyst/}

RUN_DEPENDS=	::devel/p5-Class-Accessor \
		::devel/p5-Class-Data-Inheritable \
		::devel/p5-Class-Inspector \
		::devel/p5-Data-Dump \
		::devel/p5-File-Modified \
		::devel/p5-Module-Pluggable \
		::devel/p5-Path-Class \
		::devel/p5-Tree-Simple \
		::devel/p5-Tree-Simple-VisitorFactory \
		::textproc/p5-Text-SimpleTable \
		::www/p5-CGI-Simple \
		::www/p5-HTTP-Body \
		::www/p5-HTTP-Request-AsCGI \
		p5-libwww->=5.805::www/p5-libwww
REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE=perl
CONFIGURE_ARGS=	--skip
PKG_ARCH=	*

.include <bsd.port.mk>
