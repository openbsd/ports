# $OpenBSD: Makefile,v 1.4 2010/01/11 22:11:52 jasper Exp $

COMMENT=	perform tests on all modules of a distribution

MODULES=	cpan

DISTNAME=	Test-Distribution-2.00
PKGNAME=	${DISTNAME}p0
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= modbuild

RUN_DEPENDS=		::devel/p5-File-Find-Rule-Perl

.include <bsd.port.mk>
