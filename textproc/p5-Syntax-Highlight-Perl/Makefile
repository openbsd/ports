# $OpenBSD: Makefile,v 1.6 2010/12/03 11:46:49 ajacoutot Exp $

COMMENT=	syntax highlight for perl

MODULES=	cpan
DISTNAME=	Syntax-Highlight-Perl-Improved-1.01
PKGNAME=	p5-Syntax-Highlight-Perl-1.01
REVISION=	0
CATEGORIES=	textproc www
USE_GROFF =	Yes

# Perl licence
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

post-install:
	${INSTALL_PROGRAM} ${WRKDIST}/viewperl ${PREFIX}/bin

.include <bsd.port.mk>
