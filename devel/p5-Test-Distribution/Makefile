# $OpenBSD: Makefile,v 1.11 2015/01/21 14:27:59 sthen Exp $

COMMENT=	perform tests on all modules of a distribution

MODULES=	cpan

DISTNAME=	Test-Distribution-2.00
REVISION=	1
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE= modbuild

RUN_DEPENDS=		devel/p5-File-Find-Rule-Perl

.include <bsd.port.mk>
