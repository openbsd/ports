# $OpenBSD: Makefile,v 1.6 2011/04/08 13:29:38 jasper Exp $

COMMENT=	write Perl subroutines in other programming languages

MODULES=	cpan
DISTNAME=	Inline-0.48
CATEGORIES=	devel

MAINTAINER=	Gleydson Soares <gsoares@trusted.com.br>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Parse-RecDescent
REGRESS_DEPENDS=	devel/p5-Test-Warn

.include <bsd.port.mk>
