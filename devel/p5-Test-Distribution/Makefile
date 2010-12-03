# $OpenBSD: Makefile,v 1.9 2010/12/03 11:44:36 ajacoutot Exp $

COMMENT=	perform tests on all modules of a distribution

MODULES=	cpan

DISTNAME=	Test-Distribution-2.00
REVISION=	1
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= modbuild
USE_GROFF =	Yes

RUN_DEPENDS=		devel/p5-File-Find-Rule-Perl

.include <bsd.port.mk>
