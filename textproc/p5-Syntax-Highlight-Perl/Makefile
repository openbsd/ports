# $OpenBSD: Makefile,v 1.7 2013/03/11 11:42:44 espie Exp $

COMMENT=	syntax highlight for perl

MODULES=	cpan
DISTNAME=	Syntax-Highlight-Perl-Improved-1.01
PKGNAME=	p5-Syntax-Highlight-Perl-1.01
REVISION=	0
CATEGORIES=	textproc www
USE_GROFF =	Yes

# Perl licence
PERMIT_PACKAGE_CDROM=   Yes

post-install:
	${INSTALL_PROGRAM} ${WRKDIST}/viewperl ${PREFIX}/bin

.include <bsd.port.mk>
