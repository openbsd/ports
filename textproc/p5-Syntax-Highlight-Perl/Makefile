# $OpenBSD: Makefile,v 1.4 2007/09/15 20:59:40 merdely Exp $

COMMENT=	syntax highlight for perl

MODULES=	cpan
DISTNAME=	Syntax-Highlight-Perl-Improved-1.01
PKGNAME=	p5-Syntax-Highlight-Perl-1.01
CATEGORIES=	textproc www

# Perl licence
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

post-install:
	${INSTALL_PROGRAM} ${WRKDIST}/viewperl ${PREFIX}/bin

.include <bsd.port.mk>
