# $OpenBSD: Makefile,v 1.8 2015/01/21 14:41:38 sthen Exp $

COMMENT=	syntax highlight for perl

MODULES=	cpan
DISTNAME=	Syntax-Highlight-Perl-Improved-1.01
PKGNAME=	p5-Syntax-Highlight-Perl-1.01
REVISION=	0
CATEGORIES=	textproc www

# Perl licence
PERMIT_PACKAGE_CDROM=   Yes

post-install:
	${INSTALL_PROGRAM} ${WRKDIST}/viewperl ${PREFIX}/bin

.include <bsd.port.mk>
