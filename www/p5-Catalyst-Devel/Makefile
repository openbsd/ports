# $OpenBSD: Makefile,v 1.16 2015/01/21 14:42:32 sthen Exp $

COMMENT=	Catalyst development tools

MODULES=	cpan
DISTNAME=	Catalyst-Devel-1.36
CATEGORIES=	www

HOMEPAGE=	http://www.catalystframework.org/

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Config-General \
		devel/p5-File-ChangeNotify \
		devel/p5-File-Copy-Recursive \
		devel/p5-File-ShareDir \
		devel/p5-Moose \
		devel/p5-MooseX-Daemonize \
		devel/p5-MooseX-Emulate-Class-Accessor-Fast \
		devel/p5-Module-Install>=1.02 \
		devel/p5-Path-Class \
		devel/p5-namespace-autoclean \
		devel/p5-namespace-clean \
		textproc/p5-Template \
		www/p5-Catalyst-Action-RenderView \
		www/p5-Catalyst-Plugin-ConfigLoader>=0.30 \
		www/p5-Catalyst-Plugin-Static-Simple>=0.28 \
		www/p5-Catalyst-Runtime>=5.90001 \
		www/p5-Starman

TEST_DEPENDS=devel/p5-IPC-Run3 \
		devel/p5-Test-Fatal

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_ARGS+=--skipdeps

.include <bsd.port.mk>
