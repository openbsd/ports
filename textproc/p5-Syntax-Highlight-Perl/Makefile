# $OpenBSD: Makefile,v 1.11 2020/07/03 21:45:49 sthen Exp $

COMMENT=	syntax highlight for perl

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Syntax-Highlight-Perl-Improved-1.01
PKGNAME=	p5-Syntax-Highlight-Perl-1.01
REVISION=	1
CATEGORIES=	textproc www

# Perl licence
PERMIT_PACKAGE=	Yes

post-install:
	${INSTALL_PROGRAM} ${WRKDIST}/viewperl ${PREFIX}/bin

.include <bsd.port.mk>
