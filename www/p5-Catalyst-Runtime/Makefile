# $OpenBSD: Makefile,v 1.20 2010/10/19 08:02:55 espie Exp $

COMMENT= 	MVC Web Application Framework

MODULES=	cpan
DISTNAME=	Catalyst-Runtime-5.80024
CATEGORIES=	www
USE_GROFF =	Yes

HOMEPAGE=	http://www.catalystframework.org/

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-namespace-autoclean \
		::devel/p5-namespace-clean \
		:p5-B-Hooks-EndOfScope->=0.08:devel/p5-B-Hooks-EndOfScope \
		:p5-Class-C3-Adopt-NEXT->=0.07:devel/p5-Class-C3-Adopt-NEXT \
		::devel/p5-Class-Data-Inheritable \
		:p5-Class-MOP->=1.03:devel/p5-Class-MOP \
		::devel/p5-Data-Dump \
		::devel/p5-Data-OptList \
		::devel/p5-List-MoreUtils \
		::devel/p5-MRO-Compat \
		:p5-Moose->=1.08:devel/p5-Moose \
		:p5-MooseX-Emulate-Class-Accessor-Fast->=0.00903:devel/p5-MooseX-Emulate-Class-Accessor-Fast \
		::devel/p5-MooseX-Getopt \
		:p5-MooseX-MethodAttributes->=0.19:devel/p5-MooseX-MethodAttributes \
		::devel/p5-MooseX-Role-WithOverloading \
		::devel/p5-MooseX-Types \
		::devel/p5-MooseX-Types-Common \
		:p5-Path-Class->=0.09:devel/p5-Path-Class \
		::devel/p5-Sub-Exporter \
		::devel/p5-Task-Weaken \
		::devel/p5-Tree-Simple \
		::devel/p5-Tree-Simple-VisitorFactory \
		::textproc/p5-String-RewritePrefix \
		::textproc/p5-Text-SimpleTable \
		::www/p5-CGI-Simple \
		::www/p5-HTTP-Body \
		::www/p5-URI \
		:p5-HTTP-Request-AsCGI->=1.0:www/p5-HTTP-Request-AsCGI \
		:p5-libwww->=5.805:www/p5-libwww

REGRESS_DEPENDS=::devel/p5-Pod-Coverage \
		::devel/p5-Test-Exception \
		::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_ARGS=	--skipdeps

.include <bsd.port.mk>
