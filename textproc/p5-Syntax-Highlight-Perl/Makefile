COMMENT=	"syntax highlight for perl"

DISTNAME=	Syntax-Highlight-Perl-Improved-1.01
PKGNAME=	p5-Syntax-Highlight-Perl-1.01
CATEGORIES=	textproc perl5 www
PKG_ARCH=	*

# Perl licence
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Syntax/}

CONFIGURE_STYLE= perl

post-install:
	${INSTALL_PROGRAM} ${WRKDIST}/viewperl ${PREFIX}/bin

.include <bsd.port.mk>
