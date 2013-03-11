# $OpenBSD: Makefile,v 1.10 2013/03/11 10:50:22 espie Exp $

COMMENT=	perform tests on all modules of a distribution

MODULES=	cpan

DISTNAME=	Test-Distribution-2.00
REVISION=	1
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE= modbuild
USE_GROFF =	Yes

RUN_DEPENDS=		devel/p5-File-Find-Rule-Perl

.include <bsd.port.mk>
