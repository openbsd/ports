# $OpenBSD: Makefile,v 1.13 2019/07/12 20:45:09 sthen Exp $

COMMENT=	perform tests on all modules of a distribution

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Test-Distribution-2.00
REVISION=	1
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE= modbuild

RUN_DEPENDS=		devel/p5-File-Find-Rule-Perl

.include <bsd.port.mk>
