# $OpenBSD: Makefile,v 1.6 2010/07/13 19:46:13 sthen Exp $

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

RUN_DEPENDS=		::devel/p5-File-Find-Rule-Perl

.include <bsd.port.mk>
