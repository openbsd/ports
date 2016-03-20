# $OpenBSD: Makefile,v 1.12 2016/03/20 19:56:36 naddy Exp $

COMMENT=	perform tests on all modules of a distribution

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Test-Distribution-2.00
REVISION=	1
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE= modbuild

RUN_DEPENDS=		devel/p5-File-Find-Rule-Perl

.include <bsd.port.mk>
