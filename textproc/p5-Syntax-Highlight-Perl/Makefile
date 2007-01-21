# $OpenBSD: Makefile,v 1.3 2007/01/21 21:46:21 simon Exp $

COMMENT=	"syntax highlight for perl"

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
