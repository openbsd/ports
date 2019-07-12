# $OpenBSD: Makefile,v 1.10 2019/07/12 21:02:27 sthen Exp $

COMMENT=	syntax highlight for perl

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Syntax-Highlight-Perl-Improved-1.01
PKGNAME=	p5-Syntax-Highlight-Perl-1.01
REVISION=	0
CATEGORIES=	textproc www

# Perl licence
PERMIT_PACKAGE=	Yes

post-install:
	${INSTALL_PROGRAM} ${WRKDIST}/viewperl ${PREFIX}/bin

.include <bsd.port.mk>
