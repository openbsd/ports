# $OpenBSD: Makefile,v 1.3 2006/02/07 21:37:21 pvalchev Exp $
SHARED_ONLY=	Yes

COMMENT=	"perl interface to a variant of the MD5 algorithm"
DISTNAME=	Digest-MD5-M4p-0.01
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Digest/}

# same as perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

CONFIGURE_STYLE=perl

INSTALL_TARGET=	install_site

# trailing ^M after a \ for line continuation confuses gcc2
pre-patch:
	@perl -i -pe 's/\r$$//' ${WRKSRC}/M4p.xs

.include <bsd.port.mk>
