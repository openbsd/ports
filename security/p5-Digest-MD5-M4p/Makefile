# $OpenBSD: Makefile,v 1.2 2005/03/30 21:16:18 jolan Exp $
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

.include <bsd.port.mk>
