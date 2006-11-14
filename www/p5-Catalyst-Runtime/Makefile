# $OpenBSD: Makefile,v 1.5 2006/11/14 10:22:12 espie Exp $

COMMENT= 	"MVC Web Application Framework"

MODULES=	cpan
DISTNAME=	Catalyst-Runtime-5.7005
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	www

HOMEPAGE=	http://www.catalystframework.org/

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_ARGS=	--skip

.include <bsd.port.mk>
