# $OpenBSD: Makefile,v 1.1.1.1 2009/09/14 21:18:49 jasper Exp $

COMMENT=	common rules for searching for Perl things

MODULES=	cpan
DISTNAME=	File-Find-Rule-Perl-1.09
CATEGORIES=	devel

# Perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

RUN_DEPENDS=	:p5-Parse-CPAN-Meta->=1.39:devel/p5-Parse-CPAN-Meta \
		:p5-File-Find-Rule->=0.20:devel/p5-File-Find-Rule

.include <bsd.port.mk>
