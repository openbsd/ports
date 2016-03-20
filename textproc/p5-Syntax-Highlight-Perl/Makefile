# $OpenBSD: Makefile,v 1.9 2016/03/20 19:57:08 naddy Exp $

COMMENT=	syntax highlight for perl

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Syntax-Highlight-Perl-Improved-1.01
PKGNAME=	p5-Syntax-Highlight-Perl-1.01
REVISION=	0
CATEGORIES=	textproc www

# Perl licence
PERMIT_PACKAGE_CDROM=   Yes

post-install:
	${INSTALL_PROGRAM} ${WRKDIST}/viewperl ${PREFIX}/bin

.include <bsd.port.mk>
