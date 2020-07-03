# $OpenBSD: Makefile,v 1.14 2020/07/03 21:45:13 sthen Exp $

COMMENT=	perform tests on all modules of a distribution

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Test-Distribution-2.00
REVISION=	2
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE= modbuild

RUN_DEPENDS=		devel/p5-File-Find-Rule-Perl

.include <bsd.port.mk>
