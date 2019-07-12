# $OpenBSD: Makefile,v 1.28 2019/07/12 20:50:52 sthen Exp $

COMMENT=	MVC Web Application Framework

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Runtime-5.90006
REVISION=	2
CATEGORIES=	www

HOMEPAGE=	http://www.catalystframework.org/

# Artistic + GPL
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	devel/p5-Task-Weaken

RUN_DEPENDS=	devel/p5-namespace-autoclean \
		devel/p5-namespace-clean \
		devel/p5-B-Hooks-EndOfScope>=0.08 \
		devel/p5-Class-C3-Adopt-NEXT>=0.07 \
		devel/p5-Class-Load \
		devel/p5-Data-Dump \
		devel/p5-Data-OptList \
		devel/p5-List-MoreUtils \
		devel/p5-MRO-Compat \
		devel/p5-Module-Pluggable \
		devel/p5-Moose>=2.1204 \
		devel/p5-MooseX-Emulate-Class-Accessor-Fast>=0.00903 \
		devel/p5-MooseX-Getopt>=0.30 \
		devel/p5-MooseX-MethodAttributes>=0.25 \
		devel/p5-MooseX-Role-WithOverloading>=0.09 \
		devel/p5-MooseX-Types \
		devel/p5-MooseX-Types-Common \
		devel/p5-MooseX-Types-LoadableClass \
		devel/p5-Path-Class>=0.09 \
		www/p5-Plack \
		www/p5-Plack-Middleware-ReverseProxy \
		www/p5-Plack-Test-ExternalServer \
		devel/p5-Sub-Exporter \
		devel/p5-Tree-Simple \
		devel/p5-Tree-Simple-VisitorFactory \
		devel/p5-Try-Tiny \
		textproc/p5-String-RewritePrefix \
		textproc/p5-Text-SimpleTable \
		www/p5-CGI-Simple \
		www/p5-HTML-Parser \
		www/p5-HTTP-Body \
		www/p5-URI \
		www/p5-HTTP-Request-AsCGI>=1.0 \
		www/p5-libwww>=5.805

TEST_DEPENDS=devel/p5-Class-Data-Inheritable \
		devel/p5-MooseX-Daemonize \
		devel/p5-Test-Exception \
		devel/p5-YAML \
		www/fcgi \
		www/p5-Starman

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_ARGS=	--skipdeps

.include <bsd.port.mk>
