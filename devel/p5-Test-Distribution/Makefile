# $OpenBSD: Makefile,v 1.7 2010/10/18 17:48:07 espie Exp $

COMMENT=	perform tests on all modules of a distribution

MODULES=	cpan

DISTNAME=	Test-Distribution-2.00
REVISION=	0
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= modbuild
USE_GROFF =	Yes

RUN_DEPENDS=		::devel/p5-File-Find-Rule-Perl

.include <bsd.port.mk>
